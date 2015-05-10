#To do: change range so that it dynamically updates. Add final line at the end of the file

import xlrd
book = xlrd.open_workbook("Tone_calculator.xlsx")
print "The number of worksheets is", book.nsheets
print "Worksheet name(s):", book.sheet_names()
sh = book.sheet_by_index(4)
print sh.nrows, sh.ncols

f = open('E5.txt', 'w')

for x in range(1, sh.nrows):
	#print 'X"', sh.cell_value(rowx=x, colx=6), '" when "', sh.cell_value(rowx=x, colx=7), '",'
	f.write('\tX"')
	f.write(sh.cell_value(rowx=x, colx=6))
	f.write('" when "')
	f.write(sh.cell_value(rowx=x, colx=7))
	f.write('",\n')

f.write('\tX"0000" when others;')
f.close()