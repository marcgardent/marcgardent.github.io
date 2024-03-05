# marcgardent.github.io

## Start Env.

```sh

docker run --rm -v="$pwd/:/srv/jekyll" -v="$pwd/vendor/bundle:/usr/local/bundle" -p=4000:4000 -it jekyll/jekyll:3.6.2 bash

```

## Debug

```sh

jekyll serve

```

## Build

```sh

jekyll build -d docs

```
