def faster_solution_for_pairwise_product(numbers):
    max_number = 0
    index1 = 0

    for i in range(len(numbers)):
        if numbers[i] > max_number:
            max_number = numbers[i]
            index1 = i

    max_number2 = 0
    for j in range(len(numbers)):
        if numbers[j] > max_number2 and j != index1:
            max_number2 = numbers[j]

    return max_number2 * max_number
