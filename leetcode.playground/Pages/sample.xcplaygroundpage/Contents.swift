import UIKit

let zero = TreeNode(0)
let one = TreeNode(1)
let two = TreeNode(2)
let three = TreeNode(3)
let five = TreeNode(5)
let seven = TreeNode(7)
let eight = TreeNode(8)
let six = TreeNode(6)

two.left = one
two.right = three

seven.right = eight
seven.left = six

five.left = two
five.right = seven

five.inorderTraversal()

var tree = BinarySearchTree()
tree.insert(5)
tree.insert(2)
tree.insert(7)
tree.insert(8)
tree.insert(6)
tree.insert(1)
tree.insert(3)
tree.root?.inorderTraversal()
