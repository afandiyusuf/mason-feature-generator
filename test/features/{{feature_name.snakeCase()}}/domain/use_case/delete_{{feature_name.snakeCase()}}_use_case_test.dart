import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:user_management/features/{{feature_name.snake_casee()}}/domain/repository/{{feature_name.snake_casee()}}_repository.dart';
import '../../../../../lib/features/{{feature_name.snake_casee()}}/domain/use_case/delete_{{feature_name.snake_casee()}}_use_case.dart';

import 'delete_{{feature_name.snake_casee()}}_use_case.mocks.dart';

@GenerateNiceMocks([MockSpec<{{feature_name.pascalCase()}}Repository>()])
void main() {
  late Mock{{feature_name.pascalCase()}}Repository mockRespository;
  late Delete{{feature_name.pascalCase()}}UseCase delete{{feature_name.pascalCase()}}UseCase;
  late Delete{{feature_name.pascalCase()}}Param param;
  setUp(() {
    mockRespository = Mock{{feature_name.pascalCase()}}Repository();
    delete{{feature_name.pascalCase()}}UseCase =
        Delete{{feature_name.pascalCase()}}UseCase(repository: mockRespository);
    param = Delete{{feature_name.pascalCase()}}Param();
  });

  test("delete {{feature_name.snake_casee()}} use case test", () async {
    when(mockRespository.delete{{feature_name.pascalCase()}}())
        .thenAnswer((realInvocation) async => Right(true));
    var data = await delete{{feature_name.pascalCase()}}UseCase(param);
    expect(data, isA<Right>());
    verify(mockRespository
      ..delete{{feature_name.pascalCase()}}())
        .called(1);
  });
}
