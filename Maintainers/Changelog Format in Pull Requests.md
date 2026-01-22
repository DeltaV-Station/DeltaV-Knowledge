The Changelog section of the pull request must always be at the end of the PR body.  
The Changelog always starts off with the [Changelog Header](#changelog-header), followed by any amount of [Category Blocks](#category-block), which can contain any amount of [Entries](#entry).

### Changelog Header

See [source code here](https://github.com/space-wizards/SS14.Changelog/blob/83831f3cf8d1b6e49432b4a45f5aa3c6e3f5fc2c/SS14.Changelog/Controllers/WebhookController.cs#L25-L26)

This begins with a case-insensitive `:cl:`, or the emoji `🆑`, followed by any amount of whitespace, then an optional  author, which may only contain the characters `a-z` `0-9` `_-,&`, and spaces. Localize names to those characters if needed.  
If the author part is empty, the name of the GitHub user that opened the PR will be used instead.

Examples:
```md
<!-- Correct -->
:CL:
:cL: Toby, Not-Toby
:cl: Me, Myself & I
🆑

<!-- Incorrect -->
CL:
CL: Toby, Not Toby
:🆑:
:cl: Toby, Töby!!!
```

### Category Block

See [source code here](https://github.com/space-wizards/SS14.Changelog/blob/83831f3cf8d1b6e49432b4a45f5aa3c6e3f5fc2c/SS14.Changelog/Controllers/WebhookController.cs#L31-L32)

A category block starts off with the case-insensitive name of the category, followed by a colon.  
All [entries](#Entry) after this until the next category block are part of that category.  
Leading whitespace, as well as anything after the colon is ignored.  
<!-- The name may only contain the characters a-z. -->
There is a whitelist of allowed categories, namely:
- Main (This is the default if you do not start off)
- DeltaVAdmin
- Maps
Invalid category names get ignored and the previously set category stays the current one.

Examples:
```md
<!-- Correct -->
MAIN:

maps:

			   DeltaVAdmin:               

<!-- Incorrect -->

mapping:

admin:

DeltaV:

maps::
```

### Entry

See [source code here](https://github.com/space-wizards/SS14.Changelog/blob/83831f3cf8d1b6e49432b4a45f5aa3c6e3f5fc2c/SS14.Changelog/Controllers/WebhookController.cs#L28-L29)

An entry is a list item, followed by an entry type, then a description. Any leading spaces are ignored.  
The entry type has to be one of:
- add
- remove
- tweak
- bug
- fix
- bugfix
Where `bug`, `fix`, and `bugfix` are treated identically.

Examples:
```md
<!-- Correct -->
- bug: Changelogs no longer explode

    *    add:      Nëẅ stüff!! 🐈🐈🐈🐈

<!-- Incorrect -->
bug: Oh no I forgot a list symbol

- delete: We don't have deletions, only removals

* tweak :oops that's a typo on the space and semicolon
```

### Leftovers

Any other line in the changelog block is ignored. You can use this to add comments, whitespace to ease readability, or whatever else you want.

### Extra info

Since there are not unique changelogs for every map, unless a change is universal, mapping changelog entries should always be prefixed with the name of the map they apply to.
Example:
```md
- add: Centcomm: Added a new bar
```

### Example
As an example, a full changelog block may look like this:
```md
:cl: Toby, DeltaV-Bot

- add: Added documentation about how to write a changelog block
* fix: Avoid mistakes in changelog blocks

MAPS:

- tweak: All walls have been replaced by bees

No there's no reason not to but this in the first block, but it's a good example :^)
MAIN:
- fix: I forgot to add this changelog entry a few lines above

DeltaVAdmin:
- remove: Removed all admins
```