import 'package:dartz/dartz.dart';
import 'package:user_management/core/error/failures.dart';
import 'package:user_management/core/usecase.dart';
import 'package:user_management/features/{{feature_name.snakeCase()}}/domain/repository/{{feature_name.snakeCase()}}_repository.dart';

class Create{{feature_name.pascalCase()}}UseCase extends UseCase<bool, Create{{feature_name.pascalCase()}}Param> {
  {{feature_name.pascalCase()}}Repository repository;

  Create{{feature_name.pascalCase()}}UseCase({required this.repository});

  @override
  Future<Either<Failure, bool>> call(Create{{feature_name.pascalCase()}}Param params) async {
    return repository.create{{feature_name.pascalCase()}}(
        {{#create_param}}{{name}}:params.{{name}},{{/create_param}}
      );
  }
}

class Create{{feature_name.pascalCase()}}Param extends Param {
{{#have_create}}{{#create_param}}
  {{{type}}}{{^required}}?{{/required}} {{name}};{{/create_param}}
  Create{{feature_name.pascalCase()}}Param({{#have_create}}{ {{/have_create}}{{^have_create}}){{/have_create}}
    {{#create_param}}{{#required}}required{{/required}} {{{type}}}{{^required}}?{{/required}} this.{{name}},{{/create_param}}
  {{#have_create}} });{{/have_create}}
{{/have_create}}
}
