import Foundation

public struct Queue {
    private var elements: [Int] = []

    mutating func push(_ x: Int) {
        elements.append(x)
    }

    mutating func pop() -> Int? {
        if elements.count != 0 {
            return elements.removeFirst()
        }
        return nil
    }

    func peek() -> Int? {
        return elements.first
    }

    func empty() -> Bool {
        return elements.count == 0
    }
}

