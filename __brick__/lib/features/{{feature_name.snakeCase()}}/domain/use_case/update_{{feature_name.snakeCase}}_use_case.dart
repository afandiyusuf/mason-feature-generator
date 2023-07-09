import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecase.dart';
import '../repository/{{feature_name.snakeCase()}}_repository.dart';

class Update{{feature_name.pascalCase()}}UseCase extends UseCase<bool, Update{{feature_name.pascalCase()}}Param> {
  final {{feature_name.pascalCase()}}Repository repository;

  Update{{feature_name.pascalCase()}}UseCase({required this.repository});

  @override
  Future<Either<Failure, bool>> call(Update{{feature_name.pascalCase()}}Param params) async {
    return repository.update{{feature_name.pascalCase()}}(
        {{#update_param}}{{name}}:params.{{name}},{{/update_param}}
    );
  }
}

class Update{{feature_name.pascalCase()}}Param extends Param {
{{#have_update}}{{#update_param}}
  {{{type}}}{{^required}}?{{/required}} {{name}};{{/update_param}}
  Update{{feature_name.pascalCase()}}Param({{#have_update}}{ {{/have_update}}{{^have_update}}){{/have_update}}
    {{#update_param}}{{#required}}required{{/required}} {{{type}}}{{^required}}?{{/required}} this.{{name}},{{/update_param}}
  {{#have_update}} });{{/have_update}}
{{/have_update}}
}
