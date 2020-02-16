import Foundation

public struct Stack<Element> {
    private var storage: [Element]

    public init() {
        storage = []
    }

    mutating public func push(_ element: Element) {
        storage.append(element)
    }

    mutating public func pop() -> Element? {
        return storage.popLast()
    }

    public func peek() -> Element? {
        return storage.last
    }

    public func isEmpty() -> Bool {
        return storage.count == 0
    }
}
