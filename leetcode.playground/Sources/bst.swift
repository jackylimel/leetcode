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

extension TreeNode {
    public func inorderTraversal(root: TreeNode) -> [Int] {
        var result: [Int] = []
        var stack: Stack<TreeNode> = Stack()
        var node: TreeNode? = root
        while (node != nil || !stack.isEmpty()) {
            while(node != nil) {
                stack.push(node!)
                node = node!.left
            }
            node = stack.pop()
            result.append(node!.val)
            node = node?.right
        }
        return result
    }
}
