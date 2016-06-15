# Uses python3
import sys

def get_fibonacci_last_digit(n):
    fib_list = [0, 1]
    if n <= 1:
        return fib_list[n]
    for i in range(2, n+1):
        fib_list.append((fib_list[i - 1] + fib_list[i - 2]) % 10)
    return fib_list[n]

if __name__ == '__main__':
    input = sys.stdin.read()
    n = int(input)
    print(get_fibonacci_last_digit(n))
