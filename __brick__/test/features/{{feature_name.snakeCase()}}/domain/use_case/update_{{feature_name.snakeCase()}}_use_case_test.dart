import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import '../../../../../lib/features/{{feature_name.snake_casee()}}/domain/repository/{{feature_name.snake_casee()}}_repository.dart';
import '../../../../../lib/features/{{feature_name.snake_casee()}}/domain/use_case/update_{{feature_name.snake_casee()}}_use_case.dart';

import 'update_{{feature_name.snake_casee()}}_use_case.mocks.dart';

@GenerateNiceMocks([MockSpec<{{feature_name.pascalCase()}}Repository>()])
void main() {
  late Mock{{feature_name.pascalCase()}}Repository mockRespository;
  late Update{{feature_name.pascalCase()}}UseCase update{{feature_name.pascalCase()}}UseCase;
  late Update{{feature_name.pascalCase()}}Param param;
  setUp(() {
    mockRespository = Mock{{feature_name.pascalCase()}}Repository();
    update{{feature_name.pascalCase()}}UseCase =
        Update{{feature_name.pascalCase()}}UseCase(repository: mockRespository);
    param = Update{{feature_name.pascalCase()}}Param();
  });

  test("Update {{feature_name.snake_casee()}} use case test", () async {
    when(mockRespository.update{{feature_name.pascalCase()}}())
        .thenAnswer((realInvocation) async => Right(true));
    var data = await update{{feature_name.pascalCase()}}UseCase(param);
    expect(data, isA<Right>());
    verify(mockRespository
      ..update{{feature_name.pascalCase()}}())
        .called(1);
  });
}
