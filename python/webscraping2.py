from bs4 import BeautifulSoup
import requests, re

r = requests.get('https://webscraper.io/test-sites/e-commerce/allinone/phones').content
soup = BeautifulSoup(r, "lxml")

#tags = soup.findAll("a", {"href":re.compile('(allinone)')})
#tags = soup.findAll("div", {"class":re.compile('(ratings)')})

tags = soup.findAll("h4")
print(tags)
for h in tags:
#    a = h.findAll("a",{"class":"title"})
    print(h.string)
#    w = p.findAll("p",{"class":"pull-right"})
#    print(type(w))
#    print(h[0].string)
#    print(a.get('href'))