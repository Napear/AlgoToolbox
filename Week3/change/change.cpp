#include <iostream>
using namespace std;

int get_change(int n, int min_coin = 0) {
  if (n == 0){
    return min_coin;
  }
  if (n >= 10){
    get_change(n-10, min_coin+1);
  } else if (n >= 5){
    get_change(n-5, min_coin+1);
  } else {
    get_change(n-1, min_coin+1);
  }
}

int main() {
  int n;
  cin >> n;
  cout << get_change(n) << '\n';
}
