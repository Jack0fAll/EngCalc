import 'expression.dart';
import 'result.dart';

class Calculator {
  // Expression expression;
  // Result result;

  // Calculator();

  Result calculate(Expression expression) {
    return Result( (double.parse(expression.toString())) + 42.0 );
  }
}