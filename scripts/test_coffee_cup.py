from scipy import misc
from numpy import savetxt
import numpy as np

coffee_cup = misc.imread('/Users/damiengoblot/Downloads/cup-clipart-black-and-white-coffee-cup-clip-art-black-white.png', mode='L')
coffee_cup = misc.imresize(coffee_cup, (40, 100))
savetxt('/Users/damiengoblot/Downloads/coffee_cup.txt', coffee_cup)