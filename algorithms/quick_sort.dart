void main() {
  var list = [3, 55, 6, 78, 32, 45, 3, 2, 9, 8, 4, 5, 6, 33, 44, 345, 23, 234];
  print(sortList(list));
}

int number = 0;
List<int> sortList(List<int> list) {
  if (list.isEmpty || list.length == 1) return list;
  int pivot = list[0];
  var lessArray = list.sublist(1).where((element) => element <= pivot).toList();
  var greaterArray =
      list.sublist(1).where((element) => element > pivot).toList();

  return [...sortList(lessArray), pivot, ...sortList(greaterArray)];
}
