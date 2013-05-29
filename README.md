# Moss

Moss is a little tool for storing the urls of files that you need to download every so often. Use it to avoid annoying mental context switches.

Also mimics [boom's](https://github.com/holman/boom) clipboard copy feature.

# Usage

#### store urls:

```
moss store name url
```

#### download files:

```
moss get name path=[.]
```

Will download the file to a path or the current directory.

Basically a friendly helper.

Depends on wget.

#### copy value to clipboard

```
moss clip name
```

So you can paste values. Assumes that xclip is installed; which is available on aptitude.

# Install

Not on Ruby gems yet so:

```
gem build moss.gemspec
sudo gem install moss-X.Y.Z.gem
```

# Files

Stores the urls in ~/.mosses


# Someday/maybe
  - download git repos
  - cache files
  - work with curl 
