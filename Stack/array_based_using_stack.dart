class Stack {
  late int top;
  late List<dynamic> items = List.filled(100, null);
  Stack({this.top = -1});

  bool isEmpty() => top < 0;
  bool isFull() => top >= items.length - 1;

  void push(dynamic element) {
    if (isFull())
      print("Stack full on push");
    else {
      top++;
      items[top] = element;
    }
  }

  dynamic pop() {
    if (isEmpty())
      print("Stack empty on pop");
    else {
      dynamic stackTop = items[top];
      top--;
      return stackTop;
    }
  }

  dynamic getStackTop() {
    if (isEmpty())
      print("Stack empty on get the top");
    else {
      dynamic stackTop = items[top];
      return stackTop;
    }
  }

  void printStack() {
    print("[ ");
    for (int i = top; i >= 0; i--) {
      print("${items[i]} ");
    }
    print("]");
  }
}

int main() {
  Stack stack = Stack();
  stack.push(12);
  stack.push(28);
  stack.push(98);
  stack.push(52);
  stack.push(78);
  stack.push(50);
  stack.push(47);
  stack.push(18);
  stack.push(22);
  stack.push(25);
  stack.push(20);
  stack.pop();

  stack.printStack();
  print("Stack Top : ${stack.getStackTop()}");

  return 0;
}
