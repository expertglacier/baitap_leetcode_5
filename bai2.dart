// Cách 1:
int fibo1(int n) {
  int result = 0;
  int num1 = 1;
  int num2 = 1;

  if (n == 0) return 0;
  if (n == 1 || n == 2) return 1;

  for (int i = 1; i < n; i++) {
    result = num1 + num2;
    num2 = num1;
    num1 = result;
  }

  return result;
}

// Cách 2:
int fibo2 (int n) {
  int sumTemp = 0;
  List<int> result = [0, 1];

  if (n == 0) return 0;
  if (n == 1 || n == 2) return 1;

  for (int i = 0; i < n; i++) {
    sumTemp = result[i] + result[i+1];
    result.add(sumTemp);
  }

  return result.last;
}

// Cách 3:
int fibo3 (int n) {
  if (n == 0) return 0;
  if (n == 1 || n == 2) return 1;

  return fibo(n - 1) + fibo(n - 2);
}
