## Power settings for Apple Silicon Macs

Listing power settings

```
pmset -g
```

Listing scheduled events
```
sudo pmset -g sched
```

### Dark Wake 

> If your Mac has a high Dark Wake count, it might be waking frequently, leading to battery drain in sleep mode. This could be caused by:
> 
> - Power Nap being enabled.
> - Network activity requests (Wake-on-LAN, iCloud sync, etc.).
> - USB or Bluetooth devices triggering wake-ups.
> - Background daemons like dasd or powerd scheduling tasks.


List dark wake requests

```
pmset -g stats
```

List wake requests
```
pmset -g log | grep "Wake Requests"
```

## Improving battery life

### Disabling `Wake for network access`

Go to `System Preferences > Battery > Options... > Wake for network access` and disable it.

### Disable powernap

```
sudo pmset -a powernap 0
```

### Disable Screen time

Many blog post suggest to disable Screen Time to avoid waking up the mac. Disable fron `System Preferences > Screen Time`.

### Disabling scheduled events

Listing scheduled events

```
sudo pmset -g sched
```

Cancelling all 

```
sudo pmset schedule cancelall
```
