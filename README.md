vagrant-docker-base
===

Prerequisites
--
* decent terminal (ideally *bash* or *zsh*)
* Virtualbox installed
* Vagrant installed

Steps
---
### Install [vagrant proxy conf plugin](https://github.com/tmatilai/vagrant-proxyconf) if you are behind a proxy.
### Clone project:
```bash
> # choose desired location to place vagrant box home
> cd ~/Lab && git clone https://github.com/scaryPonens/vagrant-docker-base.git .
> vagrant up
> # refill coffee mug
```
### Reload Vagrant box, the docker installation requires a restart.
```bash
> vagrant reload && vagrant ssh
```
### Verify docker installed correctly.
```bash
> docker run hello-world
> # ...
> Hello from Docker!
> This message shows that your installation appears to be working correctly.
> # ...
```


