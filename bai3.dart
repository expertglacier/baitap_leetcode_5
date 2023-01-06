class Solution {
  int repeatedNTimes(List<int> nums) {
    Map<int, dynamic> mapNums = {};
    int result = 0;

    // Gán mỗi số (không trùng nhau) trong nums làm keys,
    // và số lần lặp lại của mỗi số đó làm values của mapNums.
    for (int i = 0; i < nums.length; i++) {
      if (mapNums[nums[i]] == null) {
        mapNums[nums[i]] = 1;
      } else if (mapNums[nums[i]] != null) {
        mapNums[nums[i]] += 1;
      }
    }

    // Kiểm tra điều kiện 'nums.length == 2 * n' đề bài đã cho.
    mapNums.forEach((key, value) {
      if (nums.length == value * 2) {
        result = key;
      }
    });

    return result;
  }
}
