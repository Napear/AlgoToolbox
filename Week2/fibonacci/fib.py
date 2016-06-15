# Uses python3

# bad solution provided as part of course materials
def calc_fib(n):
    if n <= 1:
        return n
    return calc_fib(n - 1) + calc_fib(n - 2)


# my solution
def fast_fib(n):
    fib_list = [0, 1]
    if n <= 1:
        return fib_list[n]
    for i in range(2, n + 1):
        fib_list.append(fib_list[i - 1] + fib_list[i - 2])
    return fib_list[n]


n = int(input())
print(fast_fib(n))
