import 'dart:io';

import 'linked_list_using_stack.dart';

bool isOperand(String operand) {
  if (operand.codeUnitAt(0) >= 'a'.codeUnitAt(0) &&
      operand.codeUnitAt(0) <= 'z'.codeUnitAt(0)) return true;
  if (operand.codeUnitAt(0) >= 'A'.codeUnitAt(0) &&
      operand.codeUnitAt(0) <= 'Z'.codeUnitAt(0))
    return true;
  else if (double.tryParse(operand) != null) return true;
  return false;
}

bool isOperator(String operator) {
  if (operator == '+' ||
      operator == '-' ||
      operator == '*' ||
      operator == '/' ||
      operator == '^') return true;
  return false;
}

int getWeight(String op) {
  int weight = 0;
  if (op == '-' || op == '+') weight = 1;
  if (op == '*' || op == '/') weight = 2;
  if (op == '^') weight = 3;

  return weight;
}

String infixToPostfix(String exp) {
  String output = "";
  Stack stack = Stack();
  for (int i = 0; i < exp.length; i++) {
    if (exp[i] == ' ' || exp[i] == ',') continue;
    if (isOperand(exp[i])) {
      output += exp[i];
    } else if (exp[i] == '(') {
      stack.push('(');
    } else if (exp[i] == ')') {
      while (!stack.isEmpty() && stack.getStackTop() != '(') {
        output += stack.getStackTop();
        stack.pop();
      }
      stack.pop();
    } else {
      while (!stack.isEmpty() &&
          getWeight(exp[i]) <= getWeight(stack.getStackTop())) {
        output += stack.getStackTop();
        stack.pop();
      }
      stack.push(exp[i]);
    }
  }
  while (!stack.isEmpty()) {
    output += stack.getStackTop();
    stack.pop();
  }
  return output;
}

int main() {
  print("Enter your expression");

  String? exp = stdin.readLineSync();
  print(infixToPostfix(exp ?? ''));
  return 0;
}
