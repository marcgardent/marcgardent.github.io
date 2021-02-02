# marcgardent.github.io

## Debug

```powershell
cd d:/tmp/marcgardent.github.io
docker run --rm -v="$pwd/:/srv/jekyll" -v="$pwd/vendor/bundle:/usr/local/bundle"
-p=4000:4000 -it jekyll/jekyll jekyll serve

```