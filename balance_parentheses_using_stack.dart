import 'dart:io';

import 'linked_list_using_stack.dart';

bool arePair(String open, String closed) {
  if (open == '(' && closed == ')')
    return true;
  else if (open == '{' && closed == '}')
    return true;
  else if (open == '[' && closed == ']') return true;

  return false;
}

bool checkExpressionIsBalanced(String exp) {
  Stack stack = Stack();
  for (int i = 0; i < exp.length; i++) {
    if (exp[i] == '(' || exp[i] == '{' || exp[i] == '[') {
      stack.push(exp[i]);
    } else if (exp[i] == ')' || exp[i] == '}' || exp[i] == ']') {
      if (stack.isEmpty() && !arePair(stack.getStackTop(), exp[i]))
        return false;
      stack.pop();
    }
  }
  if (stack.isEmpty()) return true;
  return false;
}

int main() {
  print("Enter your expression");
  String? exp = stdin.readLineSync();
  if (checkExpressionIsBalanced(exp ?? ''))
    print("Balanced");
  else
    print("Not balanced");
  return 0;
}
