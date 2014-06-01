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
salt "*" pkg.install vim         # install package vim on all minions
salt "web*" pkg.refresh_db       # update pkg databese on all MinionIDs web*
salt -G "os:Debian" pkg.upgrade  # dist-upgrade on all where grain os=Debian
```

Execute specific state modules from an environment
```
salt '*' state.sls core,edit.vim dev
```

Running and debugging salt states
```
salt '*' state.highstate        # running top.sls on all minions
salt-call state.highstate -l debug   # examine output of errors on minions
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

Dokumantation
-------------

See the dokumentation of the state module
```
salt '*' sys.doc state
```

