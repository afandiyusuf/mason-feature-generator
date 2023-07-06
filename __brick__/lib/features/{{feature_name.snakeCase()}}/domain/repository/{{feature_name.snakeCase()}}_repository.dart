import 'package:dartz/dartz.dart';

import '../../domain/entity/{{feature_name.snakeCase()}}_entity.dart';
import '../../../../core/error/failures.dart';

abstract class {{feature_name.pascalCase()}}Repository {
  Future<Either<Failure, List<{{feature_name.pascalCase()}}Entity>>> getAll{{feature_name.pascalCase()}}({{#have_get_all}}{ {{/have_get_all}}{{^have_get_all}});{{/have_get_all}}
      {{#get_all_param}}{{#required}}required{{/required}} {{{type}}}{{^required}}?{{/required}} {{name}},{{/get_all_param}}
    {{#have_get_all}} });{{/have_get_all}}

  Future<Either<Failure, bool>> create{{feature_name.pascalCase()}}({{#have_create}}{ {{/have_create}}{{^have_create}});{{/have_create}}
      {{#create_param}}{{#required}}required{{/required}} {{{type}}}{{^required}}?{{/required}} {{name}},{{/create_param}}
    {{#have_create}} });{{/have_create}}

  Future<Either<Failure, bool>> delete{{feature_name.pascalCase()}}({{#have_delete}}{ {{/have_delete}}{{^have_delete}});{{/have_delete}}
      {{#delete_param}}{{#required}}required{{/required}} {{{type}}}{{^required}}?{{/required}} {{name}},{{/delete_param}}
    {{#have_delete}} });{{/have_delete}}

  Future<Either<Failure, bool>> update{{feature_name.pascalCase()}}({{#have_update}}{ {{/have_update}}{{^have_update}});{{/have_update}}
      {{#update_param}}{{#required}}required{{/required}} {{{type}}}{{^required}}?{{/required}} {{name}},{{/update_param}}
    {{#have_update}} });{{/have_update}}
}
