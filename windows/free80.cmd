:: stop listening on port 80 by default
:: run as admin
net stop http /y
sc config http start= disabled