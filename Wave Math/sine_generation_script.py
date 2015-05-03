#To do: change range so that it dynamically updates. Add final line at the end of the file

import xlrd
book = xlrd.open_workbook("Tone_calculator.xlsx")
print "The number of worksheets is", book.nsheets
print "Worksheet name(s):", book.sheet_names()
sh = book.sheet_by_index(1)
print sh.name, sh.nrows, sh.ncols

f = open('A4.txt', 'w')

for x in range(1, 111):
	#print 'X"', sh.cell_value(rowx=x, colx=6), '" when "', sh.cell_value(rowx=x, colx=7), '",'
	f.write('X"')
	f.write(sh.cell_value(rowx=x, colx=6))
	f.write('" when "')
	f.write(sh.cell_value(rowx=x, colx=7))
	f.write('",\n')


f.close()