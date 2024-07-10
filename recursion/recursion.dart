void main() {
  countdownRec(5);
}

// Infinite loop
void countdown(int i) {
  print(i);
  countdown(i - 1);
}

// Recursive function
void countdownRec(int i) {
  print(i);
  if (i <= 0) return; // Base Case
  countdownRec(i - 1); // Recursive Case
}
