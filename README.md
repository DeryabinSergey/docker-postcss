## Docker PostCSS
Small docker container with PostCSS CLI https://postcss.org/ with autoprefixer https://www.npmjs.com/package/autoprefixer

## Usage

The image has the `postcss` binary as its entrypoint, so it should be invoked with whatever arguments you would normally pass to postcss. For example,

```bash
$ docker run --rm -v $(pwd):$(pwd) -w $(pwd) --user $(id -u):$(id -g) deryabinsergey/postcss --no-map --use autoprefixer -o file.min.css file.css
```

Watching for changes in file and rebuild

```bash
$ docker run --rm -v $(pwd):$(pwd) -w $(pwd) --user $(id -u):$(id -g) deryabinsergey/postcss --watch --no-map --use autoprefixer -o file.min.css file.css
```

You may also want to create a bash alias:

```bash
alias postcss="docker run -it --rm -v \$(pwd):\$(pwd) -w \$(pwd) --user \$(id -u):\$(id -g) deryabinsergey/postcss"
```

so you will be able to simply run

```
$ postcss --no-map --use autoprefixer -o file.min.css file.css
$ postcss --version
$ postcss --help
```

etc...