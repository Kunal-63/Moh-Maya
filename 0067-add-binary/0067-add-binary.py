class Solution(object):
    def addBinary(self, a, b):
        def BinaryToDecimal(s):
            decimal = 0
            s = s[::-1]
            for i in range(len(s)):
                decimal += int(s[i]) * (2**i)
            return decimal
        def DeciamlToBinary(d):
            binary = ""
            while d != 0:
                binary = binary + str(d%2)
                d = d // 2
            if binary == "":
                return "0"
            return binary[::-1]
        print(BinaryToDecimal(a), BinaryToDecimal(b) )
        return  DeciamlToBinary(BinaryToDecimal(a) + BinaryToDecimal(b))