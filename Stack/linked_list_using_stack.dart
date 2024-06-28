class Stack<T> {
  Node? _top;
  Stack();
  bool isEmpty() {
    if (_top == null) return true;
    return false;
  }

  void push(T item) {
    Node newNode = Node(item, _top);
    _top = newNode;
  }

  T? pop() {
    if (isEmpty()) {
      print('The Stack is empty');
      return null;
    }
    Node? temp = _top;
    T item = temp?.item;
    _top = temp?.next;
    temp = null;
    return item;
  }

  T? getStackTop() {
    if (isEmpty()) {
      print('The Stack is empty');
      return null;
    }
    return _top?.item;
  }

  void printStack() {
    if (isEmpty()) {
      print('The Stack is empty');
      return;
    }
    print('[');
    Node? current = _top;
    while (current != null) {
      print(current.item);
      current = current.next;
    }
    print(']');
  }
}

class Node {
  dynamic item;
  Node? next;
  Node(this.item, this.next);
}

int main() {
  Stack<int> stack = Stack();

  stack.push(5);
  stack.push(54);
  stack.push(2);
  stack.push(3);
  stack.push(1);
  stack.push(8);
  stack.push(7);

  stack.pop();
  stack.pop();
  stack.pop();

  stack.printStack();

  dynamic top = stack.getStackTop();
  print("Top : $top");

  return 0;
}
