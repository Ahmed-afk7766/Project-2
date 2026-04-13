def AND(x, y):
    return x & y

def OR(x, y):
    return x | y

def NOT(x):
    return 1 - x


def circuit(A, B, C, debug=False):
    # First stage
    AB = AND(A, B)

    # Middle stage
    B_or_C = OR(B, C)
    B_and_C = AND(B, C)

    # Second stage
    middle_output = AND(B_or_C, B_and_C)

    # Final stage
    Q = OR(AB, middle_output)

    if debug:
        print("\n--- DEBUG TRACE ---")
        print(f"A={A}, B={B}, C={C}")
        print(f"A AND B      = {AB}")
        print(f"B OR C       = {B_or_C}")
        print(f"B AND C      = {B_and_C}")
        print(f"Middle AND   = {middle_output}")
        print(f"Final Q      = {Q}")
        print("-------------------\n")

    return Q


def validate_bit(x):
    if x not in [0, 1]:
        raise ValueError("Inputs must be binary (0 or 1)")


def main():
    print("CIRCUIT SIMULATION PROGRAM")

    t = int(input("Enter number of test cases: "))

    for i in range(t):
        A, B, C = map(int, input(f"Case {i+1} (A B C): ").split())

        validate_bit(A)
        validate_bit(B)
        validate_bit(C)

        Q = circuit(A, B, C, debug=True)

        print(f"Output Q = {Q}")


if __name__ == "__main__":
    main()