# marcgardent.github.io

## Debug

```powershell
cd d:/Temp/marcgardent.github.io
docker run --rm --volume="$PWD:/srv/jekyll" -it jekyll/jekyll:4.2 jekyll serve --incremental
```