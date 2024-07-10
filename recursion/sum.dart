void main() {
  List<num> numbers = [4, 6, 8, 2, 10, 56, 34];
  print(sum(numbers));
  print(count(numbers));
  print(maxNum(numbers));
}

num sum(List<num> numbers) {
  if (numbers.isEmpty) {
    return 0;
  } else if (numbers.length == 1) {
    return numbers[0];
  } else {
    return numbers[0] + sum(numbers.sublist(1));
  }
}

int count(List<dynamic> items) {
  if (items.isEmpty)
    return 0;
  else if (items.length == 1) return 1;
  return 1 + count(items.sublist(1));
}

num maxNum(List<num> numbers) {
  if (numbers.isEmpty)
    return 0;
  else if (numbers.length == 1) return numbers[0];
  num subMax = maxNum(numbers.sublist(1));
  return numbers[0] > subMax ? numbers[0] : subMax;
}
