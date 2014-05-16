Useful Salt commands
====================

Getting an overview
___________________


"Ping" all Minions
'''
salt "*" test.ping
'''

Query Salt for Minions
'''
salt-run manage.up	# show what Minions are up
salt-run manage.down	# show what Minions are down
salt-rum manage.status	# shows the online/offline status of Minions
'''

Key-Management
______________


Show all registration request
'''
salt-key -L
'''

Accepting all Salt key requests
'''
salt-key -A
'''

Acceoting a specific Salt-key request
'''
salt-key -a *minion_id*
'''

Remove the key of a Salt Minion
'''
salt-key -d *minion_id*
'''

Run Salt
________


Selecting Minions
'''
salt "*" test.ping		# select all Salt Minions
salt "web*" test.ping		# select Minions based on their Minion ID
salt -G "os:Debian" test.ping	# select Minions based on Salt Grains (see below)
'''

Run shell commands
...
salt "*" cmd.run "ls -lisa /home"
...


Grains
______


Listing Grains
'''
salt '*' grains.ls
'''

Show Grains data
'''
salt '*' grains.items
'''

