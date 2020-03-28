# https://github.com/tiangolo/typer/issues/79

def hello(name: str):
    print(f"Hello {name}!")

def plus_one(n: int):
    print(n + 1)

def main(x: float):
    print(int(x))

def hellos(name: str, times: int):
    for _ in range(times):
        print(f"Hello {name}!")

def plus_one_unit(n: int, unit: str):
    print(f"{n + 1} {unit}")