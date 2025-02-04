/*
 * @lc app=leetcode.cn id=283 lang=swift
 *
 * [283] 移动零
 *
 * https://leetcode-cn.com/problems/move-zeroes/description/
 *
 * algorithms
 * Easy (55.19%)
 * Likes:    447
 * Dislikes: 0
 * Total Accepted:    88.3K
 * Total Submissions: 151.9K
 * Testcase Example:  '[0,1,0,3,12]'
 *
 * 给定一个数组 nums，编写一个函数将所有 0 移动到数组的末尾，同时保持非零元素的相对顺序。
 * 
 * 示例:
 * 
 * 输入: [0,1,0,3,12]
 * 输出: [1,3,12,0,0]
 * 
 * 说明:
 * 
 * 
 * 必须在原数组上操作，不能拷贝额外的数组。
 * 尽量减少操作次数。
 * 
 * 
 */

// @lc code=start
class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        guard nums.count > 0 else {
            return
        }
        
        var i = 0, j = 0
        
        while j < nums.count {
            if nums[j] != 0 {
                nums.swapAt(i, j)
                i += 1
                j += 1
            } else {
                j += 1
            }
        }
    }
}
// @lc code=end

