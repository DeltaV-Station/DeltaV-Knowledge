# Local Scripts

You can store series of commands in local files and then execute them ingame using `exec <path relative to SS14 Data>`

You can simply save text files with commands in the following directory: |OS|Location| |--|---| |Linux|`~/.local/share/Space Station 14/data/`| |Windows|`%APPDATA%\Space Station 14\data\`| |macOS|`~/Library/Application Support/Space Station 14/data`|

Here's an admin script, for example. It makes sure you're aghosted, then adds useful components to your ghost and adjusts the speed modifiers such that you move faster by default and at double speed while pressing Shift. It also turns on the admin overlay automatically.

```
> self not prototyped AdminObserver do "aghost"
> self comp:ensure ShowHealthBars comp:ensure ShowJobIcons comp:ensure ShowMindShieldIcons comp:ensure ShowCriminalRecordIcons comp:ensure ShowElectrocutionHUD
> self do "vvwrite /entity/$ID/MovementSpeedModifier/BaseWalkSpeed 24"
> self do "vvwrite /entity/$ID/MovementSpeedModifier/BaseSprintSpeed 12"
adminoverlay True
```

By placing it at `Space Station 14/data/admin`, you'll be able to execute it by simply typing `/exec admin` into the chat.

You can also place scripts into subdirectories under data to organize them. Note that file extensions are not ignored here. If your file ends up being saved as `admin.txt` you'll have to execute it using `/exec admin.txt`.
