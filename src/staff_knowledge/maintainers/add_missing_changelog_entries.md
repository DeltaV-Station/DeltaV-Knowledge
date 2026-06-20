# How to add missing Changelog Entries

If a pull request was merged without the appropriate changelog entries, you can still add the changelog entries after the fact.

### Create a file `Resources/Changelog/Parts/{PR ID}.yml`
It should be similar to this, but with data appropriate to the PR in question.
```yml
author: BarryNorfolk
changes:
- message: Silicons no longer change their battery usage depending on the temperature around them
  type: Remove
- message: IPCs now once again have working alerts for their batteries
  type: Fix
time: '2026-03-06T16:10:00.0000000+00:00'
url: https://github.com/DeltaV-Station/Delta-v/pull/5345
```

### Create a pull request

Request to merge the file. When it is merged, the Changelog bot will parse the file and commit the proper changelog.
