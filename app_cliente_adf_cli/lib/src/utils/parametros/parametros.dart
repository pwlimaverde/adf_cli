import 'package:return_success_or_error/return_success_or_error.dart';

final class ParametrosCarregarProductByName implements ParametersReturnResult {
  final String name;
  @override
  final ParametersBasic basic;

  ParametrosCarregarProductByName({
    required this.name,
    required this.basic,
  });
}
