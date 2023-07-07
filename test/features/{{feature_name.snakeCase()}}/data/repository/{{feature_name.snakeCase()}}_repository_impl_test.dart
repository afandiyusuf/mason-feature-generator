import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:user_management/core/error/exceptions.dart';
import 'package:user_management/core/error/failures.dart';
import 'package:user_management/core/features/{{feature_name.snakeCase()}}/data/data_source/{{feature_name.snakeCase()}}_local_data_source.dart';
import 'package:user_management/core/features/{{feature_name.snakeCase()}}/data/data_source/{{feature_name.snakeCase()}}e_remote_data_source.dart';
import 'package:user_management/core/features/{{feature_name.snakeCase()}}/data/repository/{{feature_name.snakeCase()}}_repository_impl.dart';
import 'package:user_management/core/features/{{feature_name.snakeCase()}}/domain/entity/{{feature_name.snakeCase()}}_entity.dart';

import 'repository_impl_test.mocks.dart';

@GenerateNiceMocks(
    [MockSpec< {{feature_name.pascalCase()}}RemoteDataSource>()])
void main() {
  var remoteDataSource = Mock{{feature_name.pascalCase()}}RemoteDataSource();
  var {{feature_name.camelCase()}}Repository = {{feature_name.pascalCase()}}RepositoryImpl(
      remoteDataSource: remoteDataSource);

  test(
      "test get all aplication type, with refresh parameter true and cache empty",
          () async {
        when(remoteDataSource.get{{feature_name.pascalCase()}}())
            .thenAnswer((realInvocation) async => []);

        var data = await {{feature_name.camelCase()}}Repository.get{{feature_name.pascalCase()}}(true);
        data.fold((l) {
          //lets put always fail test here, to make sure this part should not be executed
          expect(true, false);
        }, (r) {
          expect(r, isA<List<{{feature_name.pascalCase()}}>>());
        });
      });

  test(
      "Test get all application type, with refresh parameter true, and cache empty and server error",
          () async {
        when(remoteDataSource.getAll{{feature_name.pascalCase()}}()).thenThrow(ServerException());

        var data = await {{feature_name.camelCase()}}eRepository.get{{feature_name.pascalCase()}}(true);
        data.fold((l) {
          expect(l, isA<ServerFailure>());
        }, (r) {
          expect(true, false);
        });
      });
}
