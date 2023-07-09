import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase.dart';
import '../repository/{{feature_name.snakeCase()}}_repository.dart';
import '../../domain/entity/{{feature_name.snakeCase()}}_entity.dart';

class GetAll{{feature_name.pascalCase()}}UseCase
    extends UseCase<List<{{feature_name.pascalCase()}}Entity>, GetAll{{feature_name.pascalCase()}}Param> {
{{feature_name.pascalCase()}}Repository repository;

  GetAll{{feature_name.pascalCase()}}UseCase({required this.repository});

  @override
  Future<Either<Failure, List<{{feature_name.pascalCase()}}Entity>>> call(GetAll{{feature_name.pascalCase()}}Param params) async {
    return repository.getAll{{feature_name.pascalCase()}}(
        {{#get_all_param}}{{name}}:params.{{name}},{{/get_all_param}}
    );
  }
}

class GetAll{{feature_name.pascalCase()}}Param extends Param {
{{#have_get_all}}{{#get_all_param}}
  {{{type}}}{{^required}}?{{/required}} {{name}};{{/get_all_param}}
  GetAll{{feature_name.pascalCase()}}Param({{#have_get_all}}{ {{/have_get_all}}{{^have_get_all}}){{/have_get_all}}
    {{#get_all_param}}{{#required}}required{{/required}} {{{type}}}{{^required}}?{{/required}} this.{{name}},{{/get_all_param}}
  {{#have_get_all}} });{{/have_get_all}}
{{/have_get_all}}
}
