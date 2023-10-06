class Stack<T> {
  Node? top, current;
  Stack({this.top = null});

  void push(T item) {
    Node newNode = Node(item: item, next: top);
    top = newNode;
  }

  bool isEmpty() => top == null;
  T pop() {
    T stackTop = top?.item;

    if (isEmpty())
      print("Stack empty on pop");
    else {
      Node? temp = top;
      top = top?.next;
      temp = temp?.next;
      temp = null;
    }
    return stackTop;
  }

  T getStackTop() {
    if (isEmpty()) {
      print("Stack empty on get top");
    }
    return top?.item;
  }

  void display() {
    current = top;
    print("[ ");
    while (current != null) {
      print(current?.item);
      current = current?.next;
    }
    print(" ] ");
  }
}

class Node<T> {
  T item;
  Node? next;

  Node({required this.item, required this.next});
}

int main() {
  Stack stack = Stack();

  stack.push(5);
  stack.push(54);
  stack.push(2);
  stack.push(3);
  stack.push(1);
  stack.push(8);
  stack.push(7);

  stack.pop();

  stack.display();

  dynamic top = stack.getStackTop();
  print("Top : $top");

  return 0;
}
