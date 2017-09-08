# `stencila/open` : Stencila on the web

![Experimental](https://img.shields.io/badge/stability-experimental-orange.svg)
[![Build status](https://travis-ci.org/stencila/cloud.svg?branch=master)](https://travis-ci.org/stencila/cloud)
[![Community](https://img.shields.io/badge/join-community-green.svg)](https://community.stenci.la)
[![Chat](https://badges.gitter.im/stencila/stencila.svg)](https://gitter.im/stencila/stencila)


# Purpose

This repository is the **experimental** web deployment of [Stencila](https://stenci.la) at http://open.stenci.la. It's for:

- people who want to use Stencila but don't want to download and install [stencila/desktop](https://github.com/stencila/desktop) 
- integration with R and RStudio for users who have installed our [stencila/r](https://github.com/stencila/r) package
- us, to prototype and test a cloud based version of Stencila

This is one of the three deployments of Stencila, the others being:

- [stencila/desktop](https://github.com/stencila/desktop): Stencila Desktop
- [stencila/cli](https://github.com/stencila/cli): Stencila CLI

Our initial focus is on Stencila Desktop, so you should download that if you want something less experimental!


# Use

To use http://open.stenci.la you need to provide two URL parameters, `address` and `peers` i.e.

	http://open.stenci.la/?address=<address>&peers=<peers>

The `address` parameter tells Stencila what file or folder you want to open. There are several address _scheme_ prefixes, which specify where and how the file or folder should be fetched e.g.

- `file://` : from the file system
- `github://`: from a Github repository
- `dat://`: from a [Dat](https://datproject.org/) repository

The `peers` parameter tells Stencila which peers it should ask to open the file or folder. A _peer_ is a Stencila `Host` from one of the three Stencila language packages for:

- [R](https://github.com/stencila/r)
- [Python](https://github.com/stencila/py)
- [Node.js](https://github.com/stencila/node)

Peers also provide alternative execution contexts. The `address` schemes available depends upon the capabilities of the `peers` you use. 

For example, if you have installed one of the language packages locally then the URL might look like:

    http://open.stenci.la/?address=file:///home/me/analysis.md&peers=http://127.0.0.1:2000/?ticket=Lj3EmiYJ2YuJ

where `/home/me/analysis.md` is the path to the file that you are working on, and `http://127.0.0.1:2000/?ticket=Lj3EmiYJ2YuJ` is the local URL of the `Host` running in the language runtime (the "ticket" is a single-use access token which helps limit access to that host).


# Discuss

We :heart: feedback. Create a [new issue](https://github.com/stencila/open/issues/new), add to [existing issues](https://github.com/stencila/open/issues) or join the [community discussion](https://community.stenci.la).


# Develop

There's not a lot here to develop: this repo simply deploys the user interface code in [stencila/stencila](https://github.com/stencila/stencila) in a single HTML page. But if you want to hack on that:

```bash
git clone https://github.com/stencila/open.git
cd open
npm install
npm start
```

Then open the browser at http://127.0.0.1:8080, hack on `index.html`, refresh browser window, repeat.

Currently, this repo uses the `alt-storers` branch of `stencila/stencila` which has support for remote storage backends.

To deploy the page and the latest version of the Stencila build:

```bash
make deploy
```
