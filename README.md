# cristóbal.com
[cristóbal.com](http://cristóbal.com) web source code.

## Install & update submodules

```bash
git clone --recursive https://github.com/cristobalcl/cristobalcl-src.git
cd cristobalcl-src
git submodule foreach git checkout master
git submodule foreach git pull origin master
```

Install [Hugo](https://gohugo.io/).

## Update web

```bash
./deploy.sh
```
