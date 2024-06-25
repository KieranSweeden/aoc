struct Day02: AdventDay {
  var data: String

  var passwords: [String] {
    data.split(separator: "\n").map { passwordCheckLine in
      String(passwordCheckLine)
    }
  }

  func part1() -> Int {
    passwords.reduce(
      0,
      { validPasswordCount, passwordCheckLine in
        let parts = passwordCheckLine.split(separator: " ")
        let rangeParts = parts[0].split(separator: "-")
        let min = Int(rangeParts[0])!
        let max = Int(rangeParts[1])!
        let targetLetter = Character(String(parts[1].first!))
        let password = String(parts[2])
        let targetLetterOccurences = password.filter { $0 == targetLetter }.count
        if targetLetterOccurences >= min && targetLetterOccurences <= max {
          return validPasswordCount + 1
        } else {
          return validPasswordCount
        }
      })
  }

  func part2() -> Int {
    passwords.reduce(
      0,
      { validPasswordCount, passwordCheckLine in
        let parts = passwordCheckLine.split(separator: " ")
        let targetIndexes = parts[0].split(separator: "-").map { Int($0)! - 1 }
        let targetCharacter = Character(String(parts[1].first!))
        let password = String(parts[2])

        var validTargetIndexes = 0
        for targetIndex in targetIndexes {
          let characterAtIndex = password[
            password.index(password.startIndex, offsetBy: targetIndex)]
          if characterAtIndex == targetCharacter {
            validTargetIndexes += 1
          }
        }

        if validTargetIndexes == 1 {
          return validPasswordCount + 1
        } else {
          return validPasswordCount
        }
      })
  }
}
