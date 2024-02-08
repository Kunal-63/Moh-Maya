class Solution(object):
    def twoSum(self, nums, target):
        x=[]
        for i in range(0,len(nums)-1):
            for j in range(i+1,len(nums)):
                if ((nums[i] + nums[j]) == target):
                    x=[i,j]
                    break
        return x
        