void main() {
  List<int> list = [1, 5, 1, 2, 3, 8, 6, 9, 4, 0, 23, 56, 36, 80, 43];
  List<int> sortedList = sortListBySelecttionSort(list);
  print(sortedList);
}

int getSmallestIndex(List<int> list) {
  int smallestIndex = 0;
  int smallest = list[0];
  for (int i = 1; i < list.length; i++) {
    if (list[i] < smallest) {
      smallest = list[i];
      smallestIndex = i;
    }
  }
  return smallestIndex;
}

List<int> sortListBySelecttionSort(List<int> list) {
  List<int> newList = [];
  for (int i = 0; i < list.length + newList.length; i++) {
    int smallest = getSmallestIndex(list);
    newList.add(list[smallest]);
    list.removeAt(smallest);
  }
  return newList;
}
