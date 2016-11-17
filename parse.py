#!/usr/bin/python

import re

for line in open("../main.html"):
    search = re.finditer('img src="(http://images\.joelsartore\.com/thumb/[^"]*)"', line, re.IGNORECASE)
    for find in search:
        url = find.group(1)
        url = url.replace('thumb', 'gallery')
        print(url)
