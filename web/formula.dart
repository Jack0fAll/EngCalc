import 'expression.dart';
import 'result.dart';

class Formula {
  Expression expression;
  Result result;

  Formula(this.expression, this.result);

  @override
  String toString() {
    return expression.toString() + " = " + result.toString();
  }

}
