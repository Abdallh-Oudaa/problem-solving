void main() {
  primesNumbers(10, 30);
  print(finalPrimeNum);
}

List<int> finalPrimeNum = [];
List<int>? primesNumbers(int start, int end) {
  for (int num = start; num <= end; num++) {
    if (num > 1) {
      bool isPrime = true;
      for (int i = 2; i <= num ~/ 2; i++) {
        if (num % i == 0) {
          isPrime = false;
          break;
        }
      }
      if (isPrime) {
        finalPrimeNum.add(num);
      }
    }
  }
  return finalPrimeNum;
}
