import 'linked_list_using_stack.dart';

bool arePair(String open, String close) {
  if (open == '{' && close == '}') return true;
  if (open == '(' && close == ')') return true;
  if (open == '[' && close == ']') return true;
  return false;
}

bool areExpBalanced(String exp) {
  Stack s = Stack();

  for (String char in exp.split('')) {
    if (char == '(' || char == '{' || char == '[') {
      s.push(char);
    } else if (char == '}' || char == ']' || char == ')') {
      if (s.isEmpty() || !arePair(s.getStackTop(), char)) {
        return false;
      } else {
        s.pop();
      }
    }
  }
  return s.isEmpty();
}

int main() {
  print(areExpBalanced('(5+2+3) + {4-6}(9))'));
  return 0;
}
