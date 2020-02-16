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

seven.inorderTraversal(root: five)
