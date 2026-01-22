# aGhost Shenanigans

## Changing your aGhost sprite
### Using Toolshed
```
> self comp:ensure ChameleonDisguise do "vvwrite /entity/$ID/ChameleonDisguise/SourceProto MobRevenant"
```
- Replace MobRevenant with any prototype you want.
    - You should scale yourself down if you choose a large prototype like the Honkmother to make sure your aGhost isn't disruptive.

### Manually
1. Open the VV GUI on your aGhost.
2. Add the ChameleonDisguise component to yourself.
    - Make sure you use the ChameleonDisguise component, **not** the ChameleonDisguise**d** component.
3. Right-click yourself to check your Entity ID.
4. Use the following console command, replacing ID with your entity 1337 and MobRevenant with a prototype of your choosing:
    - ``vvwrite /entity/1337/ChameleonDisguise/SourceProto MobRevenant``

### Stopping the Jittering
While some prototypes work just fine when orbiting players, others will jitter and teleport around as players face new directions. To stop this from happening, set the ``_noLocalRotation`` attribute of your ``TransformComponent`` to True. You can check the box in the VV GUI or use the following Command:
```
> self do "vvwrite /entity/$ID/Transform/_noLocalRotation true"
```

Before setting _noLocalRotation, turn to so the sprite you want is displayed. _noLocalRotation will lock your sprite rotation completely (relative to the grid).

## Making ghosts RGB
- Simply add the RgbLightController component to the ghost in question.
