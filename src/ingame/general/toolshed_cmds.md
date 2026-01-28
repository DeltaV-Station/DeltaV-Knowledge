# Toolshed Commands

## General Information

Toolshed commands are invoked as part of their own custom query language. Toolshed allows you to search for certain groups of entities and then apply operations to them.

> [!IMPORTANT] When you want to use Toolshed, always make sure to start your command by with `> `.
>
> You'll get a permission denied message if you don't do this. Even with the > prepended, you may not have access to some commands. That's normal.

### Selecting entities

You can iterate over certain (groups of) entities with the following commands:

#### self

- This selects the entity you're controlling, primarily useful for modifying your aGhost
- For example, you can make yourself able to see health bars using `> self comp:ensure ShowHealthBars`

#### marked

- You can store an entity to be selected using this command by right-clicking it and then selecting _Admin > Mark entity_

#### entities

> [!WARNING] When using the entities command, always make sure you know what you are doing. Double-check your commands. Accidentally applying actions to a large amount of entities could easily end the round or crash the server.

- This allows you to query all entities known to the server.
- You should specify a filter for your query using...
  - `with` to search for entities that hold a certain Component.
    - For example, you can select all silicons using `> entities with SiliconLawBound`
  - `prototyped` to search for entities based on a certain prototype
    - For example, you can delete all puddles using `> entities prototyped Puddle delete `

#### ent

- Use `> ent <ID>` to select a specific entity based on its numeric ID.

## Query Recipes

### Reopen a specific job slot

```
> stations:get | jobs:job StationAi | jobs:set 1
```

- The job prototypes will autocomplete while typing, just replace StationAi if you want to open another job.
- You can also adjust the value using `jobs:adjust n`, where n can be a positive or negative value.
- When reopening Station AI specifically, you should download the old AI using an intellicard before executing this command. If a player joins while the old AI is still attached to the core, they will spawn as an invisible entity that is unable to move.

### List all Silicons and their laws

```
> entities with SiliconLawBound tee { emplace { var $name ??; ent $value laws:get ?? } }
```

- the tee here is necessary to ignore the laws:get output and stop the console from being spammed.
- this is certainly not what Toolshed was made for, hence the nested tee and emplace and the debug prints. Don't look at this as an example of a sane command.
