# Moss

Moss is a little tool for storing the urls of files that you need to download every so often. Use it to avoid annoying mental context switches.

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
