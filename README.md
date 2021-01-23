# ci-images

[![pipeline status](https://git.shore.co.il/shore/ci-images/badges/master/pipeline.svg)](https://git.shore.co.il/shore/ci-images/-/commits/master)

> Docker images for CI.

A collection of Docker images for quicker CI (negate the need to install common
dependencies during CI leading to quicker runs). The images are pushed to
https://registry.shore.co.il/. Each git branch is a different image tag (branch
`pre-commit` builds tag `pre-commit`, branch `master` should be `latest` but
isn't buildable).

## License

This software is licensed under the MIT license (see `LICENSE.txt`).

## Author Information

Nimrod Adar, [contact me](mailto:nimrod@shore.co.il) or visit my
[website](https://www.shore.co.il/). Patches are welcome via
[`git send-email`](http://git-scm.com/book/en/v2/Git-Commands-Email). The repository
is located at: <https://git.shore.co.il/explore/>.
