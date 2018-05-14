:: Name : Ceate my user
:: Description : create my specific user and add to administrator group
:: URL Source : https://ss64.com/nt/net-useradmin.html
:: Comment : None
::
net user NameYourUser PassWord /ADD
net localgroup administrators NameYourUser /ADD