#To do: change range so that it dynamically updates. Add final line at the end of the file

import xlrd
book = xlrd.open_workbook("Tone_calculator.xlsx")
print "The number of worksheets is", book.nsheets
print "Worksheet name(s):", book.sheet_names()
sh = book.sheet_by_index(4)
print sh.nrows, sh.ncols

f = open('samples.txt', 'w')

#for x in range(1, sh.nrows):
	#print 'X"', sh.cell_value(rowx=x, colx=6), '" when "', sh.cell_value(rowx=x, colx=7), '",'
#	f.write('X"')
#	f.write(sh.cell_value(rowx=x, colx=6))
#	f.write('",\n')

samples = ['000', '001', '002', '003', '004', '005', '006', '007', '008', '009', '010', '011', '012', '013', '014', '015', '016', '017', '018', '019', '020', '021', '022', '023', '024', '025', '026', '027', '028', '029', '030', '031', '032', '033', '034', '035', '036', '037', '038', '039', '040', '041', '042', '043', '044', '045', '046', '047', '048', '049', '050', '051', '052', '053', '054', '055', '056', '057', '058', '059', '060', '061', '062', '063', '064', '065', '066', '067', '068', '069', '070', '071', '072', '073', '074', '075', '076', '077', '078', '079', '080', '081', '082', '083', '084', '085', '086', '087', '088', '089', '090', '091', '092', '093', '094', '095', '096', '097', '098', '099', '100', '101', '102', '103', '104', '105', '106', '107', '108', '109', '110', '111', '112', '113', '114', '115', '116', '117', '118', '119', '120', '121', '122', '123', '124', '125', '126', '127', '128', '129', '130', '131', '132', '133', '134', '135', '136', '137', '138', '139', '140', '141', '142', '143', '144', '145', '146', '147', '148', '149', '150', '151', '152', '153', '154', '155', '156', '157', '158', '159', '160', '161', '162', '163', '164', '165', '166', '167', '168', '169', '170', '171', '172', '173', '174', '175', '176', '177', '178', '179', '180', '181', '182', '183', '184', '185', '186', '187', '188', '189', '190', '191', '192', '193', '194', '195', '196', '197', '198', '199', '200', '201', '202', '203', '204', '205', '206', '207', '208', '209', '210', '211', '212', '213', '214', '215', '216', '217', '218', '219', '220', '221', '222', '223', '224', '225', '226', '227', '228', '229', '230', '231', '232', '233', '234', '235', '236', '237', '238', '239', '240', '241', '242', '243', '244', '245', '246', '247']
tone = ['00', '01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36', '37', '38', '39']
tone_name = ['C3', 'CS3', 'D3', 'DS3', 'E3', 'F3', 'FS3', 'G3', 'GS3', 'A3', 'AS3', 'B3','C4', 'CS4', 'D4', 'DS4', 'E4', 'F4', 'FS4', 'G4', 'GS4', 'A4', 'AS4', 'B4','C5', 'CS5', 'D5', 'DS5', 'E5', 'F5', 'FS5', 'G5', 'GS5', 'A5', 'AS5', 'B5', 'C6', 'CS6', 'D6', 'DS6']
print tone_name[39]
for y in range(0, 40):
	sh=book.sheet_by_index(y+1)
	f.write('CONSTANT ')
	f.write(tone_name[y])
	f.write(': hex := (\n')
	for x in range(1, sh.nrows):
		f.write("\t")
		f.write(samples[x-1])
		f.write(' => X"')
		f.write(str(sh.cell_value(rowx=x, colx=6)))
		f.write('",\n')
	f.write('\tothers => X"0000"\n')
	f.write(');\n\n')
#For calculating tone + sample arrays

# f.write("samples = ")
# f.write("[")
# for x in range(0, 248):
# 	f.write("'")
# 	if x < 10:
# 		f.write("00")
# 	elif x < 100:
# 		f.write("0")
# 	f.write(str(x))
# 	f.write("'")

# 	if x != 247:
# 		f.write(", ")
# f.write("]\n")

# f.write("tone = ")
# f.write("[")
# for x in range(0, 40):
# 	f.write("'")
# 	if x < 10:
# 		f.write("0")
# 	f.write(str(x))
# 	f.write("'")

# 	if x != 39:
# 		f.write(", ")

# f.write("]")

f.close()