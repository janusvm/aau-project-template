# LaTeX skabelon, eksempel på Python kildekodefil
# ------------------------------------------------------------------------------


def bubblesort(a):
    for i in range(len(a)-2):
        for j in range(len(a)-i-1):
            if a[j] > a[j+1]:
                tmp = a[j]
                a[j] = a[j+1]
                a[j+1] = tmp


ex = [54, 26, 93, 17, 77, 31, 44, 55, 20]
bubblesort(ex)
print ex
