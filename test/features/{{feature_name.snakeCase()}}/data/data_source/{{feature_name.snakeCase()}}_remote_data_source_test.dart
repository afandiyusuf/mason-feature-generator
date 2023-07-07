import 'dart:io';

import 'package:dart_json_mapper_flutter/dart_json_mapper_flutter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';

import '../../../../../lib/lib/core/api/base_http_client.dart';
import '../../../../../lib/core/error/exceptions.dart';
import '../../../../../lib/features/{{feature_name.snakeCase()}}/domain/entity/{{feature_name.snakeCase()}}_entity.dart';
import '../../../../../lib/features/{{feature_name.snakeCase()}}/data/data_source/{{feature_name.snakeCase()}}_remote_data_source.dart';


@GenerateNiceMocks([MockSpec<BaseHttpClient>()])
void main() {
  var responseFromServer =
  //File("${Directory.current.path}/test/env/get_all_application.json")
  //    .readAsStringSync();
  var client = MockBaseHttpClient();
  late {{feature_name.pascalCase()}}RemoteDataSource remoteDataSource;

  late Map<String, dynamic> updateParam;
  late Map<String, dynamic> createParam;
  late String editId;
  setUp(() {
    remoteDataSource = {{feature_name.pascalCase()}}RemoteDataSourceImpl(client: client);
    initializeReflectable();
    initializeJsonMapper(adapters: [flutterAdapter]);
    setupAdapter();
    //TODO: define update param
    updateParam = {

    };
    //TODO: define create param
    createParam = {

    };
    editId = "123";
  });
  test("should return List<{{feature_name.pascalCase()}}> when success", () async {
    //TODO: add get url
    when(client.get(url: , showLog: true))
        .thenAnswer((_) async => Response(responseFromServer, 200));
    var response = await remoteDataSource.getAll{{feature_name.pascalCase()}}();
    expect(response[0], isA< {{feature_name}}Entity>());
  });

  test("create {{feature_name}} return 200 test", () async {
    //TODO: add create url
    when(client.post(url: "", showLog: true, params: createParam))
        .thenAnswer((realInvocation) async => Response("true", 200));

    var response = await remoteDataSource.create{{feature_name.pascalCase()}}();
    expect(response, true);
  });

  test("create {{feature_name}} return error test", () async {
    //TODO: add create url
    when(client.post(url: , showLog: true, params: createParam))
        .thenAnswer((realInvocation) async => Response("true", 500));
    try {
      await remoteDataSource.create{{feature_name.pascalCase()}}();
    } catch (e) {
      expect(e, isA<ServerException>());
    }
  });

  test("Delete {{feature_name}} remote data source test", () async {
    //TODO: edit url
    when(client.delete(url: , showLog: true))
        .thenAnswer((realInvocation) async => Response("true", 200));

    var data = await remoteDataSource.delete{{feature_name.pascalCase()}}();
    //TODO: add edit url
    verify(client.delete(url: "/$editId", showLog: true))
        .called(1);
    expect(data, true);
  });

  test("Delete {{feature_name.pascalCase()}} remote data source error test", () async {
    //TODO: edit url
    when(client.delete(url: , showLog: true))
        .thenAnswer((realInvocation) async => Response("true", 500));

    try {
      await remoteDataSource.delete{{feature_name.pascalCase()}}();
    } catch (e) {
      expect(e, isA<ServerException>());
    }
    //TODO: edit url
    verify(client.delete(url: , showLog: true))
        .called(1);
  });

  test("Update {{feature_name.pascalCase()}} remote data source test", () async {
    //TODO: update url
    when(client.put(
        url: ,
        showLog: true,
        params: updateParam))
        .thenAnswer((realInvocation) async => Response("", 200));
    //TODO: update param
    await remoteDataSource.update{{feature_name.pascalCase()}}();

    //TODO: update id
    verify(client.put(
        url: ,
        showLog: true,
        params: updateParam))
        .called(1);
  });
}