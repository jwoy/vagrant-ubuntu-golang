# Get up and running with Go in Vagrant

### Features
- Jump right in with Go 1.12.5 and Ubuntu 18.04 (Bionic).
- Slim as possible &ndash; only the minimal software.
- Provides you with a workspace according to [recommended practice](https://golang.org/doc/code.html).
	- The workspace is at `$HOME/go`, the default for Go.
	- The `./go` directory on your machine maps to `$HOME/go` on the guest OS.

### Quick steps

1. Install a supported [Vagrant provider](https://www.vagrantup.com/docs/providers/) such as [VirtualBox](https://www.virtualbox.org/), HyperV, Docker, or VMware.
2. Download and install [Vagrant](http://www.vagrantup.com/downloads.html).
3. Clone or [download](https://github.com/jwoy/vagrant-ubuntu-golang/archive/master.zip) this project to a folder on your machine.
4. Start and connect to the virtual machine:
```
    $ vagrant up
    $ vagrant ssh
```
#### Install and run an example in the VM:
```
    $ go get github.com/golang/example/hello
    $ hello
    Hello, Go examples!
```
#### Create your own program in the VM:
`github.com/user` is a universally-unique path of your choosing.
`package-name` is the name of your new program.
```
    $ mkdir $GOPATH/src/[github.com/user]/[package-name]
    ... create your .go file(s) in the new directory ...
    $ go install github.com/user/[package-name]
    $ [package-name]
```
