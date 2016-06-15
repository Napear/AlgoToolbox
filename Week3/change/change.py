# Uses python3
import sys


def get_change(n, min_coins=0):
    if n == 0:
        return min_coins
    if n >= 10:
        return get_change(n - 10, min_coins + 1)
    elif n >= 5:
        return get_change(n - 5, min_coins + 1)
    else:
        return get_change(n - 1, min_coins + 1)


if __name__ == '__main__':
    n = int(sys.stdin.readline())
    output = str(get_change(n))
    print(output)
