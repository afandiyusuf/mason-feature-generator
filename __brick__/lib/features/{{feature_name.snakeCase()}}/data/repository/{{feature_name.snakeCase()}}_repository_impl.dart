import 'package:dartz/dartz.dart';
import '../../../../../core/error/failures.dart';
import '../data_source/{{feature_name.snakeCase()}}_remote_data_source.dart';
import '../../domain/entity/{{feature_name.snakeCase()}}_entity.dart';
import '../../domain/repository/{{feature_name.snakeCase()}}_repository.dart';

class {{feature_name.pascalCase()}}RepositoryImpl implements {{feature_name.pascalCase()}}Repository {
  {{feature_name.pascalCase()}}RemoteDataSource remoteDataSource;

  {{feature_name.pascalCase()}}RepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, List<{{feature_name.pascalCase()}}Entity>>> getAll{{feature_name.pascalCase()}}({{#have_get_all}}{ {{/have_get_all}}{{^have_get_all}}){{/have_get_all}}
      {{#get_all_param}}{{#required}}required{{/required}} {{{type}}}{{^required}}?{{/required}} {{name}},{{/get_all_param}}
    {{#have_get_all}} }){{/have_get_all}} async {
    try {
      var data = await remoteDataSource.getAll{{feature_name.pascalCase()}}({{^have_get_all}});{{/have_get_all}}
          {{#get_all_param}}{{name}}:{{name}},{{/get_all_param}}
        {{#have_get_all}} );{{/have_get_all}}
      return Right(data);
    } catch (e) {
      return Left(ServerFailure("$e"));
    }
  }
  
  @override
  Future<Either<Failure, bool>> create{{feature_name.pascalCase()}}({{#have_create}}{ {{/have_create}}{{^have_create}}){{/have_create}}
      {{#create_param}}{{#required}}required{{/required}} {{{type}}}{{^required}}?{{/required}} {{name}},{{/create_param}}
    {{#have_create}} }){{/have_create}} async {
    try {
      var data = await remoteDataSource.create{{feature_name.pascalCase()}}({{^have_create}});{{/have_create}}
          {{#create_param}}{{name}}:{{name}},{{/create_param}}
        {{#have_create}} );{{/have_create}}
      return Right(data);
    } catch (e) {
      return Left(ServerFailure("$e"));
    }
  }

  @override
  Future<Either<Failure, bool>> delete{{feature_name.pascalCase()}}({{#have_delete}}{ {{/have_delete}}{{^have_delete}}){{/have_delete}}
      {{#delete_param}}{{#required}}required{{/required}} {{{type}}}{{^required}}?{{/required}} {{name}},{{/delete_param}}
    {{#have_delete}} }){{/have_delete}} async {
    try {
      var data = await remoteDataSource.delete{{feature_name.pascalCase()}}({{^have_delete}});{{/have_delete}}
          {{#delete_param}}{{name}}:{{name}},{{/delete_param}}
        {{#have_delete}} );{{/have_delete}}
      return Right(data);
    } catch (e) {
      return Left(ServerFailure("$e"));
    }
  }

  @override
  Future<Either<Failure, bool>> update{{feature_name.pascalCase()}}({{#have_update}}{ {{/have_update}}{{^have_update}}){{/have_update}}
      {{#update_param}}{{#required}}required{{/required}} {{{type}}}{{^required}}?{{/required}} {{name}},{{/update_param}}
    {{#have_update}} }){{/have_update}} async {
    try {
      var data = await remoteDataSource.update{{feature_name.pascalCase()}}({{^have_update}});{{/have_update}}
          {{#update_param}}{{name}}:{{name}},{{/update_param}}
        {{#have_update}} );{{/have_update}}
      return Right(data);
    } catch (e) {
      return Left(ServerFailure("$e"));
    }
  }
}
