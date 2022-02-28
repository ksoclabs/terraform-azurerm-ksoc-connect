# Release Process

This page describes the release process for this project.

We use [Semantic Versioning](http://semver.org/).

NOTE: As [Semantic Versioning](http://semver.org/spec/v2.0.0.html) states all 0.y.z releases can contain breaking changes in API (flags, grpc API, any backward compatibility)

We (obviously) aim for `main` branch being stable.

## How to release a version

[git-chglog](https://github.com/git-chglog/git-chglog) is used to generate the changelog for each release.

We leverage the upstream GitHub Action [here](https://github.com/marketplace/actions/generate-changelog-with-git-chglog) to generate the changelog for each release.

Releases happen by bumping the `next_version` variable within the `releases.yaml` [here](../.github/workflows/release.yaml).

Upon merging the change into the `main` branch the [CHANGELOG.md](../CHANGELOG.md) will be updated with the new version as well as a tag being created.
