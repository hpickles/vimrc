# vimrc

**Scope**
This projet tracks my .vimrc file as well as instructions and supporting script files to implement it.

## Plugins

### Valloric/YouCompleteMe

**Instructions:**
Below are some basic instructions compiled from the Valloric/YouCompleteMe github repo.

Run `:echo has('python')` or `:echo has('python3')` to check for Python support
Run `:PluginInstall` to download the package
Make sure the necessary packages are installed by running
	`sudo apt install build-essential cmake python3-dev`
Once the package is downloaded, navigate to ~/.vim/bundle/YouCompleteMe and
run `./install.py`.  **NOTE:** It may be beneficial to run `python3 install.py` to specify
the python3 library.  Running just `./install.py` ran into issues where it assumed Python 2.

#### Notes on YCM
I tried running the above on Debian Buster (Testing), and running `./install.py` gave the error:
	"ERROR: Python headers are missing in /usr/include/python2.7."
The odd part is that Vim is complied with Python 3 support and not Python 2 support.  Installing the python3-dev
package should have installed the correct python3 headers.

I tried to install python-dev, which is for python 2.  Seems to be building just fine now.
Trying to run vim, it looks like completion isn't taking place?  You can run CTRL+Space to trigger completion menu.
It's not showing up.
Note that running python3 install.py worked.
