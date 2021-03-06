#!/usr/bin/python
import json
import psycopg2
import sys
import pprint
import argparse

try:
    import json
except ImportError:
    import simplejson as json

class NetdiscoInventory(object):

    def __init__(self):
        self.inventory = {}
        self.read_cli_args()

        # Called with `--list`.
        if self.args.list:
            self.inventory = self.get_inventory()
        # Called with `--host [hostname]`.
        elif self.args.host:
            # Not implemented, since we return _meta info `--list`.
            self.inventory = self.empty_inventory()
        # If no groups or vars are present, return an empty inventory.
        else:
            self.inventory = self.empty_inventory()

        print json.dumps(self.inventory, indent=4);

    def get_inventory(self):
        conn_string = "host='localhost' dbname='netdisco' user='netdisco' password='redhat'"

        # get a connection, if a connect cannot be made an exception will be raised here
        conn = psycopg2.connect(conn_string)

        # conn.cursor will return a cursor object, you can use this cursor to perform queries
        cursor = conn.cursor()

        # execute our Query
        cursor.execute("SELECT vendor,name,ip FROM device")

        inventory = {'_meta': {'hostvars': {}}}
        for row in cursor.fetchall():
            group = row[0]
            host = row[1] or 'ungrouped'
            ip = row[2]

        # Create the group if it doesn't exist
            if group not in inventory:
                inventory[group] = {'hosts': [], 'vars': {}}
        # Add the host to the group
            inventory[group]['hosts'].append(host)

            # Add a hostvars record for the host if it doesn't exist
            if host not in inventory['_meta']['hostvars']:
                inventory['_meta']['hostvars'][host] = {}
            # Add the role variable for this host to hostvars
            inventory['_meta']['hostvars'][host]['ip'] = ip
        # print json.dumps(inventory, indent=4)

    # Empty inventory for testing.
    def empty_inventory(self):
        return {'_meta': {'hostvars': {}}}

    # Read the command line args passed to the script.
    def read_cli_args(self):
        parser = argparse.ArgumentParser()
        parser.add_argument('--list', action = 'store_true')
        parser.add_argument('--host', action = 'store')
        self.args = parser.parse_args
		
NetdiscoInventory()
