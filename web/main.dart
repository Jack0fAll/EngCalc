import 'dart:html';
import 'formula.dart';
import 'calculator.dart';
import 'expression.dart';

void main() {
  querySelector('#initial-output').remove(); //Show a loading message until this script loads

  // runProg();
}

void runProg() {
  // Define Elements that we will be using in the UI
  InputElement newCalcInput = querySelector('.current-calc input');
  Element calcButton = querySelector('.current-calc button');

  // Define variables that we need to keep up with and handle
  List<Formula> history = List<Formula>();
  Calculator calculator = Calculator();

  newCalcInput.onChange.listen((Event e) {
    if (e.toString() != '') {
      Expression expression = Expression(newCalcInput.value);
      history.add(Formula(expression, calculator.calculate(expression)));
      addToHistory(history[history.length-1]);
      newCalcInput.value = '';
    }
  });

  calcButton.onClick.listen( (Event e) {
    handleNewExpression(Expression(newCalcInput.value), history, calculator);
    newCalcInput.value = '';
  });

  
}

void addToHistory(Formula historyItem) {
  Element historyList = querySelector('.history ul');
  Element newListItem = LIElement();
  newListItem.text = historyItem.toString();
  historyList.children.add(newListItem);
}

void handleNewExpression(Expression expression, List<Formula> history, Calculator calc) {
  history.add(Formula(expression, calc.calculate(expression)));
  addToHistory(history[history.length-1]);
}
