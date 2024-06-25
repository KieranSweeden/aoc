struct Day01: AdventDay {
  let targetEntitySum = 2020

  var data: String

  var entities: [Int] {
    data.split(separator: "\n").map { expense in
      Int(expense)!
    }
  }

  func part1() -> Any {
    for expense in entities {
      for secondExpense in entities {
        if (expense + secondExpense) == targetEntitySum {
          return expense * secondExpense
        }
      }
    }

    return 0
  }

  func part2() -> Any {
    for expense in entities {
      for secondExpense in entities {
        for thirdExpense in entities {
          if (expense + secondExpense + thirdExpense) == targetEntitySum {
            return expense * secondExpense * thirdExpense
          }
        }
      }
    }

    return 0
  }
}
