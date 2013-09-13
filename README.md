# Angular JS Playground

Angular JS deploy with Vagrant

## Requirements
* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](http://www.vagrantup.com/)


## Get it to work

### Git magic

    git clone --recursive git@github.com:danielpetroianu/angular_playground.git // git 1.6.5+

or

    git clone git@github.com:danielpetroianu/angular_playground.git
    cd angular_playground
    git submodule init
    git submodule update

### Vagrant magic

    vagrant up

## Installs
* AngularJS
* Karma
* Bower
* Grunt


## Vagrant

Vagrant is [very well documented](http://docs.vagrantup.com/v2/) but here are a few common commands:

* `vagrant up` starts the virtual machine and provisions it
* `vagrant suspend` will essentially put the machine to 'sleep' with `vagrant resume` waking it back up
* `vagrant halt` attempts a graceful shutdown of the machine and will need to be brought back with `vagrant up`
* `vagrant ssh` gives you shell access to the virtual machine

