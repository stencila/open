# `stencila/open` : Stencila on the web

![Experimental](https://img.shields.io/badge/stability-experimental-orange.svg)
[![Build status](https://travis-ci.org/stencila/cloud.svg?branch=master)](https://travis-ci.org/stencila/cloud)
[![Community](https://img.shields.io/badge/join-community-green.svg)](https://community.stenci.la)
[![Chat](https://badges.gitter.im/stencila/stencila.svg)](https://gitter.im/stencila/stencila)

This repository is for our deployment on [Stencila](https://stenci.la) on the web at http://open.stenci.la. It's one of three deployments of Stencila, the others being:

- [stencila/desktop](https://github.com/stencila/desktop): Stencila Desktop
- [stencila/cli](https://github.com/stencila/cli): Stencila CLI

### Develop

There's not a lot here to develop: this repo simply deploys the user interface code in [stencila/stencila](https://github.com/stencila/stencila) in a single HTML page. But if you want to hack on that:

```bash
git clone https://github.com/stencila/open.git
cd open
npm install
npm start
```

Then open the browser at http://127.0.0.1:8080, hack on `index.html`, refresh browser window, repeat.

To deploy the page and the latest version of the Stencila build:

```bash
make deploy
```
