vagrant-docker-base
===

Prerequisites
--
* decent terminal (ideally *bash* or *zsh*)
* Virtualbox installed
* Vagrant installed

Steps
---
1. Install [vagrant proxy conf plugin](https://github.com/tmatilai/vagrant-proxyconf) if you are behind a proxy.
2. Clone project:
```bash
> # choose desired location to place vagrant box home
> cd ~/Lab && git clone https://github.com/scaryPonens/vagrant-docker-base.git .
> vagrant up
> # refill coffee mug
```
3. Reload Vagrant box, the docker installation requires a restart.
```bash
> vagrant reload && vagrant ssh
```
4. Verify docker installed correctly.
```bash
> docker run hello-world
> # ...
> Hello from Docker!
> This message shows that your installation appears to be working correctly.
> # ...
```


