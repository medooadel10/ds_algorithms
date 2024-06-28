class Stack {
  int top;
  List<dynamic> items;
  Stack({this.top = -1, required this.items});

  bool isFull() {
    if (top == items.length) {
      return true;
    }
    return false;
  }

  bool isEmpty() {
    if (top == -1) {
      return true;
    }
    return false;
  }

  void push(dynamic item) {
    if (isFull()) {
      print('The Stack is full');
      return;
    }
    top++;
    items.add(item);
  }

  dynamic pop() {
    if (isEmpty()) {
      print('The Stack is empty');
      return;
    }
    dynamic item = items.removeAt(top);
    top--;
    return item;
  }

  dynamic getTop() {
    if (isEmpty()) {
      print('The Stack is empty');
      return;
    }
    return items[top];
  }

  dynamic printStack() {
    if (isEmpty()) {
      print('The Stack is empty');
      return;
    }
    print('[');
    for (dynamic item in items) {
      print(item);
    }
    print(']');
  }
}

int main() {
  List<dynamic> items = [];
  print(items);
  Stack stack = Stack(items: items);
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
  stack.pop();

  stack.printStack();
  print("Stack Top : ${stack.getTop()}");

  return 0;
}
