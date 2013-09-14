# Angular JS Playground

Created a angularjs project using yeoman angular generator

## Requirements
* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](http://www.vagrantup.com/)


## How to use

### Clone the repo

    git clone --recursive git@github.com:danielpetroianu/angular_playground.git // git 1.6.5+

or

    git clone git@github.com:danielpetroianu/angular_playground.git
    cd angular_playground
    git submodule init
    git submodule update

### Run Vagrant

    vagrant up

## What will you get ?
* [yo](http://yeoman.io/)
* [Bower](http://bower.io/)
* [Grunt](http://gruntjs.com/)
* [AngularJS](http://angularjs.org/)
* [Karma](http://karma-runner.github.io/)


## Vagrant

Vagrant is [very well documented](http://docs.vagrantup.com/v2/) but here are a few common commands:

* `vagrant up` starts the virtual machine and provisions it
* `vagrant suspend` will essentially put the machine to 'sleep' with `vagrant resume` waking it back up
* `vagrant halt` attempts a graceful shutdown of the machine and will need to be brought back with `vagrant up`
* `vagrant ssh` gives you shell access to the virtual machine
