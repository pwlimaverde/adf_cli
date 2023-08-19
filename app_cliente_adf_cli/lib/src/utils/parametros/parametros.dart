import 'package:return_success_or_error/return_success_or_error.dart';

import '../../entities/studends/students.dart';

final class ParametrosCarregarProductByName implements ParametersReturnResult {
  final String name;
  @override
  final ParametersBasic basic;

  ParametrosCarregarProductByName({
    required this.name,
    required this.basic,
  });
}

final class ParametrosStudentFindById implements ParametersReturnResult {
  final int id;
  @override
  final ParametersBasic basic;

  ParametrosStudentFindById({
    required this.id,
    required this.basic,
  });
}

final class ParametrosInsertStudent implements ParametersReturnResult {
  final String json;
  @override
  final ParametersBasic basic;

  ParametrosInsertStudent({
    required this.json,
    required this.basic,
  });
}