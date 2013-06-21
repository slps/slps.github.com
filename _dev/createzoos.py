#! /usr/bin/env python
grammars = []
keys = []

f = open('zoo.xml','r')
gcx = 0
kcx = 0
for line in f.readlines():
	if line.find('<grammar>')>-1:
		grammars.append('')
	if line.find('<handle>')>-1:
		keys.append(line.split('>')[1].split('<')[0])
	elif len(grammars)>0:
		grammars[-1] += line
f.close()

if len(keys) != len(grammars):
	print 'Got',len(keys),'keys, but only',len(grammars),'grammars!'
else:
	# print keys
	cx = 0
	for key in keys:
		f = open('../slps/topics/grammars/'+key+'/zoo.xml','w')
		f.write('<?xml version="1.0" encoding="UTF-8"?>')
		f.write(grammars[cx])
		f.close()
		cx += 1
		print key,'done!'
