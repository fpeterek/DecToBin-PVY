def dec_to_bin(num):
    binary = ""
    while True:
        temp = num
        binary = ("1" if temp != ((num >> 1) << 1) else "0") + binary
        num >>= 1
        if not num:
            break
    return binary
