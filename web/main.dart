import 'dart:html';
import 'formula.dart';

void main() {
  querySelector('#initial-output').remove(); //Show a loading message until this script loads
  addToHistory();
}

void addToHistory() {
  Element historyList = querySelector('.history ul');
  Element newListItem = LIElement();
  newListItem.text = "I'm Added from dart";
  historyList.children.add(newListItem);
}