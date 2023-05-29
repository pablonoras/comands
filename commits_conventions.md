# Commit and MR conventions

## Branches

Branch names must be `PYTH_PROD-<TICKET-ID>`, e.g. `PYTH_PROD-21603`

## Commits

Use commitizen:
```
cz c
```

Format:

```
<TYPE>(PYTH_PROD-<TICKET-ID>): <MSG>
```

Types of commits:

```
   fix: A bug fix. Correlates with PATCH in SemVer
   feat: A new feature. Correlates with MINOR in SemVer
   docs: Documentation only changes
   style: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
   refactor: A code change that neither fixes a bug nor adds a feature
   perf: A code change that improves performance
   test: Adding missing or correcting existing tests
   build: Changes that affect the build system or external dependencies (example scopes: pip, docker, npm)
   ci: Changes to our CI configuration files and scripts (example scopes: GitLabCI)
```

`commitizen` is installed in all projects in the `dev` poetry dependency group, or can be installed globally with: `sudo pip3 install -U Commitizen`

Source: https://levelup.gitconnected.com/version-control-and-automatic-changelog-python-4d193ec90427

## Changelog

`commitizen` can be used to auto-generate a changelog for a project, with all features, fixes, refactors by release / tag. See, for example, https://github.com/commitizen-tools/commitizen/blob/master/CHANGELOG.md

Our repos have a `Makefile` command `make release VERSION=[minor/patch/major]` for this purpose. (See the projects' `make help` for the documentation.)

## Merge requests

Github is integrated with Redmine, so links to Redmine tickets are automatically created in Gitlab
