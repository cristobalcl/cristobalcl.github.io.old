# cristobal.dev
[cristobal.dev](http://cristobal.dev) web source code.

## Install

```bash
git clone --recurse-submodules -j8 git@github.com:cristobalcl/cristobalcl.github.io.git
cd cristobalcl.github.io
git fetch
git checkout source
```

Install [Hugo](https://gohugo.io/).

Ubuntu:

```
snap install hugo --channel=extended
```

Mac:

```
brew install hugo
```

## Update

```bash
scripts/update.sh
```

## Server locally

```bash
scripts/server.sh
```
