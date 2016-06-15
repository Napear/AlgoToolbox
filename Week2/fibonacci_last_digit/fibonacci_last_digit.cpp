#include <iostream>
#include <vector>
using namespace std;

int get_fibonacci_last_digit(int n) {
  vector<int> fib_list {0,1};
    if (n<=1){
     return fib_list[n];
    }
    for (int i = 2; i <= n; i++) {
     fib_list.push_back((fib_list[i-1] + fib_list[i-2]) % 10);
    }
  return fib_list[n];
}

int main() {
  int n;
  cin >> n;
  int c = get_fibonacci_last_digit(n);
  cout << c << '\n';
}
