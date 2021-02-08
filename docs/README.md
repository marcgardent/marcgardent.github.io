# marcgardent.github.io

## Start Env.

```sh
docker run --rm -v="$pwd/:/srv/jekyll" -v="$pwd/vendor/bundle:/usr/local/bundle" -p=4000:4000 -it jekyll/jekyll bash
```

## Debug

```sh
jekyll serve
```

## Build

```hs
jekyll build -d docs
```