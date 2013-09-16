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

### Intendent use

1. Clone this repository
2. Add a submodule in the wwwroot that points to an empty project `git submodule add git://...path_to_git_repo wwwroot`
3. Run `vagrant up`. Yeoman will create a angular js project with the angular generator
4. `cd wwwroot/` and commit your changes


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