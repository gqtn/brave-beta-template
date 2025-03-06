### Brave Beta template for Void Linux
---
This package provides Brave Browser in Beta version, the browser based on Chromium with privacy in mind and a built in ad blocker. This package merely takes the .deb release version from the authors, extracts and installs the files as is. Plus, ensures the dependencies are there. Note: This is not building binaries from source as a proper package should.

The template file is prepared for use with [xbps-src](https://wiki.voidlinux.org/Xbps-src) in Void Linux.
---
### Installation & Update
```
# Do it once if not done already:

$ git clone https://github.com/void-linux/void-packages
$ cd void-packages
$ ./xbps-src binary-bootstrap
$ git clone https://github.com/gqtn/brave-beta-template.git

# To install and update:

$ cd void-packages
$ ./xbps-src pkg brave-bin
$ sudo xbps-install --repository hostdir/binpkgs brave-bin
```
---
### Updates

I'm creating a file and steps to update Brave Beta. 

If you have any questions, please, open a issue.
