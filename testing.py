def searchInsert(nums, target):
        index=0
        for i in range(0,len(nums)):
            if nums[i] == target or nums[i] > target:
                index = i
                break
        else:
            index = len(nums)
        return index

print(searchInsert([1,3,5,6], 5))