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


### Intendent use

1. Clone the repository
2. `cd angular_playground`
2. Clone an empty repository for the project you want to run in the virtual machine. `git clone git://...path_to_git_repo wwwroot`
3. Run `vagrant up`. Yeoman will create a angular js project with the [angular generator](https://github.com/yeoman/generator-angular)
4. `cd wwwroot/` and commit your changes


### Run your app

1. Clone the repository
2. Run `vagrant up`  _note: you will need the wwwroot folder to be created_
3. Run `vagrant ssh`
4. `cd wwwroot/`
5. Start the server with grunt, `grunt server --force`
6. Open your prefered browser and go to [http://localhost:9000](http://localhost:9000)


## What will you get ?

* [AngularJS](http://angularjs.org/)
* [yo](http://yeoman.io/)
* [Bower](http://bower.io/)
* [Grunt](http://gruntjs.com/)
* [yo angular generator](https://github.com/yeoman/generator-angular)


## Vagrant

Vagrant is [very well documented](http://docs.vagrantup.com/v2/) but here are a few common commands:

* `vagrant up` starts the virtual machine and provisions it
* `vagrant suspend` will essentially put the machine to 'sleep' with `vagrant resume` waking it back up
* `vagrant halt` attempts a graceful shutdown of the machine and will need to be brought back with `vagrant up`
* `vagrant ssh` gives you shell access to the virtual machine
