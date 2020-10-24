from bs4 import BeautifulSoup
import requests, re

r = requests.get('https://www.reebok.com/us/flexagon-energy-shoes---preschool/DV8354.html').content
soup = BeautifulSoup(r, "html.parser")

span = soup.find("h1", {"class}":"gl-heading gl-heading--regular gl-heading--italic name___1EbZs"})
title = span.text

print("Item name: %s" % (title))