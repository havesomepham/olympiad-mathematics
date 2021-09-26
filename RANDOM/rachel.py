# This script was created to verify the answer of Problem 2 from Nathan Cho's handout "States in Combinatorics" (https://cncm-website.web.app/pdfs/handouts/States_Nacho.pdf) which is as follows:
# Rachel is standing at the middle of a 3 by 3 square grid. Every second, she randomly chooses to walk up, down, left, or right by 1 unit. Rachel stops if she walks outside the square. Find the the expected value of (in other words, on average) the number of steps she makes before she stops. (For example, if she goes left two times, she stops, and the number of steps made is 2)
# I have thus empircally verified that the answer is ~4.5.

from random import random

x = 0
y = 0
count = 0
sum = 0.0


def randomWalk():
    global x, y, count
    if abs(x) > 1 or abs(y) > 1:
        return count
    else:
        r = random()
        if r <= 0.25:
            x += 1
            count += 1
            return randomWalk()
        elif r <= 0.5:
            x -= 1
            count += 1
            return randomWalk()
        elif r <= 0.75:
            y += 1
            count += 1
            return randomWalk()
        else:
            y -= 1
            count += 1
            return randomWalk()


for i in range(0, 10**5):
    x = 0
    y = 0
    count = 0
    sum += randomWalk()
print(sum/10**5)
