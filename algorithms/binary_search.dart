void main() {
  List<int> list = [1, 3, 5, 7, 8, 9, 10, 12, 15, 17];
  int? itemIndex = getItemByBinarySearch(list, 17);
  print(itemIndex);
}

int? getItemByBinarySearch(List<int> list, int item) {
  int low = 0;
  int high = list.length - 1;
  int mid;
  int guess;
  while (low <= high) {
    mid = (low + high) ~/ 2;
    guess = list[mid];
    if (guess == item)
      return mid;
    else if (guess > item)
      high = mid - 1;
    else
      low = mid + 1;
  }
  return null;
}
