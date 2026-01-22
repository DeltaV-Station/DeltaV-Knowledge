
This describes the default steps you should do when reviewing a standard content PR

- [ ] Read PR description
- [ ] Check that requirements are met
- [ ] Check that they confirm ownership
	- [ ] If it's a port, confirm that the source is appropriately licensed or confirm that the author gave permission
- [ ] Check that the Changelog is [Properly formatted](Maintainers/Changelog%20Format%20in%20Pull%20Requests.md)
- [ ] Start a GitHub review
- [ ] Assign yourself to show other maintainers that someone is working on the PR, and to give a person to contact about progress reports
- [ ] Review the code, checking quality, sanity, and functionality
	- [ ] Test the code locally before merge!! Do not just test that the feature works as intended, try to think of interactions that may break.
- [ ] Set the appropriate labels on the PR
	- [ ] Remove `S: Needs Review`
	- [ ] Add `S: Changes Requested` or `S: Approved` as appropriate
- [ ] If the PR already has Direction and Mapper approval or does not need it, it is now free to merge, otherwise wait until it does and merge then
