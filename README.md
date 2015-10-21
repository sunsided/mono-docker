# mono nightly

A `Dockerfile` cloned from [this gist](https://gist.github.com/xelibrion/ecc9317c596a10114375) to build docker images of mono nightlies.

The repository can be found at [sunside/mono](https://hub.docker.com/r/sunside/mono/).

## Build scripts

The build script `build.sh` obtains the latest nightly version from the Debian Wheezy package feed, updates the `Dockerfile` and then builds and tags the docker image. It uses the `update-dockerfile.sh` and, indirectly, `get-version.sh` helper scripts to do so.
