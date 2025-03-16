## Power settings for Apple Silicon Macs

Listing power settings

```
pmset -g
```

### Disable powernap

```
sudo pmset -a powernap 0
```

### Disable Screen time

Many blog post suggest to disable Screen Time to avoid waking up the mac. Disable fron `System Preferences > Screen Time`.

### List wake requests

```
pmset -g log | grep "Wake Requests"
```
