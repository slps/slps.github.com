#! /usr/bin/env python
grammars = []
keys = []

f = open('zoo.xml','r')
gcx = 0
kcx = 0
skip = True
for line in f.readlines():
	if line.find('<grammar>')>-1:
		grammars.append('')
		skip = False
	if line.find('<toolset ref="ecore2bgf"/>')>-1:
		line = '<extraction><ecore/></extraction>'
	if line.find('<handle>')>-1:
		keys.append(line.split('>')[1].split('<')[0])
		print '<expand-grammar>'+keys[-1]+'</expand-grammar>'
	else:
		if skip:
			print line,
		else:
			grammars[-1] += line
	if line.find('</grammar>')>-1:
		skip = True
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
		# print key,'done!'
	print cx,'zoo entries done in total.'