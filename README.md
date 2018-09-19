# homebridge-pihole
Add your PiHole DNS-Server to HomeKit using the homebridge Project and the homebridge-cmd4 Plugin



Installation
------------

### Step 1 `Update System`

  Update your System with `apt-get update && apt-get upgrade`

### Step 2 `Homebridge`

  Install homebridge using `npm install -g homebridge`.

### Step 3 `Cmd4 Plugin`

  Install the homebridge-cmd4 plugin using `npm install -g homebridge-cmd4`.
  
### Step 4 `Create Folder`

  Create a new Folder `mkdir $HOME/.homebridge/cmd4/`
  
### Step 5 `Copy the Script`

  Copy the Script 'pihole.sh' into the cmd4 Folder for example with 'nano $HOME/.homebridge/cmd4/pihole.sh' and just copy/paste.
  
### Step 5 `Update Homebridge Config`

  Edit your homebridge config File like the example below:

## Homebridge Config.json Example


```
   ...
   {
      "platform": "Cmd4",
      "name": "Cmd4",
      "accessories":
      [
         {
             "type": "Switch",
             "name": "PiHole",
             "on": false,
             "state_cmd": "bash .homebridge/cmd4/pihole.sh"
             "polling": true,
             "interval": 5,
             "timeout": 2000,
          }
      ]
   }
   ...

```
