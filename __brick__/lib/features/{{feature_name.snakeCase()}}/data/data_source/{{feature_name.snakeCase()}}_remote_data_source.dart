
abstract class {{feature_name.pascalCase()}} {
  Future<List<{{feature_name.pascalCase()}}>> getAll{{feature_name.pascalCase()}}({{#have_get_all}}{ {{/have_get_all}}{{^have_get_all}});{{/have_get_all}}
      {{#get_all_param}}{{#required}}required{{/required}} {{type}}{{^required}}?{{/required}} this.{{name}},{{/get_all_param}}
    {{#have_get_all}} });{{/have_get_all}}

  Future<bool> create{{feature_name.pascalCase()}}({{#have_create}}{ {{/have_create}}{{^have_create}});{{/have_create}}
      {{#create_param}}{{#required}}required{{/required}} {{type}}{{^required}}?{{/required}} this.{{name}},{{/create_param}}
    {{#have_create}} });{{/have_create}}

  Future<bool> delete{{feature_name.pascalCase()}}({{#have_delete}}{ {{/have_delete}}{{^have_delete}});{{/have_delete}}
      {{#delete_param}}{{#required}}required{{/required}} {{type}}{{^required}}?{{/required}} this.{{name}},{{/delete_param}}
    {{#have_delete}} });{{/have_delete}}

  Future<bool> update{{feature_name.pascalName()}}({{#have_update}}{ {{/have_update}}{{^have_update}});{{/have_update}}
      {{#update_param}}{{#required}}required{{/required}} {{type}}{{^required}}?{{/required}} this.{{name}},{{/update_param}}
    {{#have_update}} });{{/have_update}}
}