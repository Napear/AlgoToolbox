# Uses python3
import sys


# TODO: Figure out why the python solution is soooo much slower

# def russian_peasant(x, y):
#     z = 0
#     while y > 0:
#         if y % 2 == 1: z = z + x
#         x = x << 1
#         y = y >> 1
#     return z


def gcd(a, b):
    current_gcd = 1
    for d in range(2, min(a, b) + 1):
        if a % d == 0 and b % d == 0:
            if d > current_gcd:
                current_gcd = d
    return current_gcd


def lcm(a, b):
    return (a * b) / gcd(a, b)


if __name__ == '__main__':
    input = sys.stdin.read()
    a, b = map(int, input.split())
    print(lcm(a, b))
