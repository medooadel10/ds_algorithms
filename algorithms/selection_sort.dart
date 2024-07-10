void main() {
  List<int> list = [1, 5, 1, 2, 3, 8, 6, 9, 4, 0, 23, 56, 36, 80, 43];
  List<int> sortedList = sortListBySelecttionSort(list);
  print(sortedList);
}

int getSmallestIndex(List<int> array) {
  // init of smallest index
  int smallestIndex = 0;
  // init of smallest item
  int smallest = array[0];
  for (int i = 1; i < array.length; i++) {
    // check if item is less than smallest item
    if (array[i] < smallest) {
      // smallest = item
      smallest = array[i];
      //smallestIndex = itemIndex
      smallestIndex = i;
    }
  }
  return smallestIndex;
}

List<int> sortListBySelecttionSort(List<int> array) {
  // Create new array (sorted) to put smallest items
  List<int> newArray = [];
  // Loop for original array
  // for each time remove the item from original array and added it to new Array
  for (int i = 0; i < array.length + newArray.length; i++) {
    // Get smallest Index
    int smallest = getSmallestIndex(array);
    // Added smallest item to new array
    newArray.add(array[smallest]);
    // Removed smallest item from original array
    array.removeAt(smallest);
  }
  return newArray;
}
