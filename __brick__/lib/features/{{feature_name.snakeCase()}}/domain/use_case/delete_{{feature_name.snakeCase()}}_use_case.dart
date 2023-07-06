import 'package:dartz/dartz.dart';
import 'package:user_management/core/error/failures.dart';
import 'package:user_management/core/usecase.dart';
import 'package:user_management/features/{{feature_name.snakeCase()}}/domain/repository/{{feature_name.snakeCase()}}_repository.dart';

class Delete{{feature_name.pascalCase()}}UseCase extends UseCase<bool, Delete{{feature_name.pascalCase()}}Param> {
  {{feature_name.pascalCase()}}Repository repository;

  Delete{{feature_name.pascalCase()}}UseCase({required this.repository});

  @override
  Future<Either<Failure, bool>> call(Delete{{feature_name.pascalCase()}}Param params) async {
    return repository.delete{{feature_name.pascalCase()}}({{#have_delete}}{ {{/have_delete}}{{^have_delete}}){{/have_delete}}
        {{#delete_param}}{{name}}:params.{{name}},{{/delete_param}}
      {{#have_delete}} }){{/have_delete}}
  }
}

class Delete{{feature_name.pascalCase()}}Param extends Param {
{{#have_delete}}{{#delete_param}}
  {{type}}{{^required}}?{{/required}} {{name}};{{/delete_param}}
  Delete{{feature_name.pascalCase()}}Param({{#have_delete}}{ {{/have_delete}}{{^have_delete}}){{/have_delete}}
    {{#delete_param}}{{#required}}required{{/required}} {{type}}{{^required}}?{{/required}} this.{{name}},{{/delete_param}}
  {{#have_delete}} }){{/have_delete}}
{{/have_delete}}
}
