import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:build/build.dart';
import 'package:yaml/yaml.dart';

import '../generator/api_generator.dart';
import '../models/openapi_spec.dart';

/// OpenAPIジェネレーターのビルダー
///
/// このビルダーは、OpenAPI仕様からDartのコードを生成します。
/// build.yamlで設定を行い、build_runnerで実行できます。
///
/// 設定例：
/// ```yaml
/// targets:
///   $default:
///     builders:
///       openapi_generator:
///         options:
///           run_generator: true
///           input_folder: "open_api_files"
///           output_folder: "lib/generated"
///           input_urls:
///             - url: "https://example.com/openapi.yaml"
/// ```
class OpenApiBuilder extends Builder {
  @override
  Map<String, List<String>> get buildExtensions => {
        r'$lib$': ['generated/api_manager.dart'],
      };

  @override
  Future<void> build(BuildStep buildStep) async {
    print('OpenApiBuilder.build: 開始');
    print('OpenApiBuilder.build: buildStep.inputId = ${buildStep.inputId}');

    final config = await _loadConfig(buildStep);
    print('OpenApiBuilder.build: 設定読み込み完了 - $config');
    print('OpenApiBuilder.build: 設定の詳細:');
    print('  - run_generator: ${config['run_generator']}');
    print('  - input_folder: ${config['input_folder']}');
    print('  - output_folder: ${config['output_folder']}');
    print('  - input_urls: ${config['input_urls']}');

    if (config['run_generator'] != true) {
      print('OpenApiBuilder.build: run_generatorがfalseのため終了');
      return;
    }

    final inputFolder = config['input_folder'] as String? ?? 'open_api_files';
    final outputFolder = config['output_folder'] as String? ?? 'lib/generated';
    final inputUrls =
        (config['input_urls'] as List?)?.cast<Map<String, dynamic>>() ?? [];

    print(
        'OpenApiBuilder.build: 設定値 - inputFolder: $inputFolder, outputFolder: $outputFolder, inputUrls: $inputUrls');

    // URLからOpenAPI仕様をダウンロード
    for (final urlConfig in inputUrls) {
      print('OpenApiBuilder.build: URL設定の処理開始 - $urlConfig');
      final url = urlConfig['url'] as String;
      final fileName = url.split('/').last;
      final outputPath = '$inputFolder/$fileName';

      print(
          'OpenApiBuilder.build: ダウンロード開始 - url: $url, outputPath: $outputPath');

      try {
        print('OpenApiBuilder.build: HttpClientの作成');
        final client = HttpClient();
        print('OpenApiBuilder.build: URLのパース - $url');
        final uri = Uri.parse(url);
        print('OpenApiBuilder.build: リクエストの送信');
        final response = await client.getUrl(uri);
        print('OpenApiBuilder.build: レスポンスの取得');
        final responseData = await response.close();
        print('OpenApiBuilder.build: レスポンスの読み込み');
        final content = await responseData.transform(utf8.decoder).join();
        print('OpenApiBuilder.build: ファイルの書き込み - $outputPath');
        await File(outputPath).writeAsString(content);
        print('OpenApiBuilder.build: ダウンロード完了 - $outputPath');

        print('OpenApiBuilder.build: YAMLの解析開始');
        final yaml = loadYaml(content);
        print('OpenApiBuilder.build: OpenApiSpecの作成');
        final spec = OpenApiSpec.fromJson(yaml);
        print('OpenApiBuilder.build: ApiGeneratorの作成');
        final generator = ApiGenerator(spec, outputFolder);
        print('OpenApiBuilder.build: ジェネレーターの実行');
        await generator.generate();
        print('OpenApiBuilder.build: ジェネレーター実行完了');
      } catch (e, stackTrace) {
        print('OpenApiBuilder.build: エラー発生 - $e');
        print('OpenApiBuilder.build: スタックトレース - $stackTrace');
        rethrow;
      }
    }
  }

  /// 設定ファイルを読み込む
  Future<Map<String, dynamic>> _loadConfig(BuildStep buildStep) async {
    try {
      print('OpenApiBuilder._loadConfig: 開始');
      print(
          'OpenApiBuilder._loadConfig: buildStep.inputId = ${buildStep.inputId}');

      // クライアント側のbuild.yamlを読み込む
      final clientConfigAsset =
          AssetId(buildStep.inputId.package, 'build.yaml');
      print(
          'OpenApiBuilder._loadConfig: クライアントの設定ファイル読み込み - $clientConfigAsset');

      try {
        final clientConfigContent =
            await buildStep.readAsString(clientConfigAsset);
        print('OpenApiBuilder._loadConfig: クライアントの設定内容 - $clientConfigContent');
        final clientConfig =
            loadYaml(clientConfigContent) as Map<String, dynamic>;
        final clientOptions = clientConfig['targets']?['\$default']?['builders']
                    ?['openapi_generator_flutter']?['options']
                as Map<String, dynamic>? ??
            {};
        print('OpenApiBuilder._loadConfig: クライアントの設定 - $clientOptions');
        return clientOptions;
      } catch (e) {
        print('OpenApiBuilder._loadConfig: クライアントの設定読み込みに失敗 - $e');
      }

      // ライブラリ側のbuild.yamlを読み込む
      final libraryConfigAsset =
          AssetId('openapi_generator_flutter', 'build.yaml');
      print(
          'OpenApiBuilder._loadConfig: ライブラリの設定ファイル読み込み - $libraryConfigAsset');

      final libraryConfigContent =
          await buildStep.readAsString(libraryConfigAsset);
      print('OpenApiBuilder._loadConfig: ライブラリの設定内容 - $libraryConfigContent');
      final libraryConfig =
          loadYaml(libraryConfigContent) as Map<String, dynamic>;
      final libraryOptions = libraryConfig['targets']?['\$default']?['builders']
                  ?['openapi_generator_flutter']?['options']
              as Map<String, dynamic>? ??
          {};
      print('OpenApiBuilder._loadConfig: ライブラリの設定 - $libraryOptions');
      return libraryOptions;
    } catch (e, stackTrace) {
      print('OpenApiBuilder._loadConfig: エラー発生 - $e');
      print('OpenApiBuilder._loadConfig: スタックトレース - $stackTrace');
      return {};
    }
  }
}
