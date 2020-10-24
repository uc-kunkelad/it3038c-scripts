from bs4 import BeautifulSoup
import requests, re

data = requests.get("https://www.apple.com/iphone-12/").content
soup = BeautifulSoup(data, 'html.parser')
span = soup.find("h1", {"class":"hero-eyebrow"})
phone = span.text
span = soup.find("p", {"class":"hero-pricing typography-hero-copy"})
price = span.text

#print(phone)
#print(price)

print("The %s is now available %s" % (phone, price))