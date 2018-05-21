import requests
import json
import base64
# Need to install requests package for python
# pip install requests
user = "admin"         
pwd = "admin"         
server_url = "http://windows.mlab.com/ServicesAPI/"              
headers = {"Content-Type": "application/json", "Accept": "application/json"}
TENANT = "tenant_name"       
DOMAIN = "domain_name"     
 
 
def GetDeviceAttribute():
    token_url= server_url + "API/login"
    #get token
    basic_data = user + ":" + pwd
    basic_data = basic_data.encode("ascii")
    auth_data = base64.b64encode(basic_data)
    headers["Authorization"] = "Basic " + auth_data.decode()
    token = requests.post(token_url,headers=headers).json()["token"]
    full_url = server_url + "API/CMDB/device/getDeviceAttribute"
    headers["Token"]=token
    #set tenant and domain
    Tenant_url = server_url + "API/setCurrentDomain"
    requests.post(Tenant_url,data=json.dumps({"tenantName":TENANT,"domainName":DOMAIN}),headers=headers)
    #get data
    data = {
        "hostname": "xx",
        "attributeName": "xx"
    }
    requests.get(full_url,params=data,headers=headers)