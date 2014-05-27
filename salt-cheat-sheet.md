Useful Salt commands
====================

Getting an overview
-------------------


"Ping" all Minions
```
salt "*" test.ping
```

Query Salt for Minions
```
salt-run manage.up         # show what Minions are up
salt-run manage.down       # show what Minions are down
salt-rum manage.status     # shows the online/offline status of Minions
```

Key-Management
--------------


```
salt-key -L                # show all registration request
salt-key -A                # accepting all Salt key requests
salt-key -a *minion_id*    # accepting a specific Salt-key request
salt-key -d *minion_id*    # remove the key of a Salt Minion
```

Run Salt
--------


Selecting Minions
```
salt "*" test.ping              # select all Salt Minions
salt "web*" test.ping           # select Minions based on their Minion ID
salt -G "os:Debian" test.ping   # select Minions based on Salt Grains (see below)
```

Run shell commands
```
salt "*" cmd.run "ls -lisa /home"
```


Grains
------


```
salt '*' grains.ls         # listing Grains
salt '*' grains.items      # show Grains data
```

