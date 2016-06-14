#include <iostream>
#include <vector>
using namespace std;

// bad algo included in course materials
int calc_fib(int n) {
  if (n <= 1)
    return n;

  return calc_fib(n - 1) + calc_fib(n - 2);
}

// my solution
int fast_fib(int n){
  vector<int> fib_list {0,1};
  if (n<=1){
   return fib_list[n];
  }
  for (int i = 0; i < n+1; i++) {
   fib_list.push_back(fib_list[i-1] + fib_list[i-2]);
  }
  return fib_list[n];
}

int main() {
  int n = 0;
  cin >> n;
  cout << fast_fib(n) << '\n';
  return 0;
}
