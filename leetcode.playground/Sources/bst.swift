import Foundation

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

public struct BinarySearchTree {
    public private(set) var root: TreeNode? = nil
    public init() {}

    mutating public func insert(_ value: Int) {
        root = insert(from: root, value: value)
    }

    private func insert(from node: TreeNode?, value: Int) -> TreeNode {
        guard let node = node else {
            return TreeNode(value)
        }
        if value < node.val {
            node.left = insert(from: node.left, value: value)
        } else {
            node.right = insert(from: node.right, value: value)
        }
        return node
    }
}

extension TreeNode {
    public func inorderTraversal() -> [Int] {
        var result: [Int] = []
        var stack: Stack<TreeNode> = Stack()
        var node: TreeNode? = self
        while(node != nil || !stack.isEmpty()) {
            while(node != nil) {
                stack.push(node!)
                node = node!.left
            }
            node = stack.pop()
            result.append(node!.val)
            node = node!.right
        }
        return result
    }
}
