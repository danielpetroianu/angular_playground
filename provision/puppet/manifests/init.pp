
#
# install node js
#

class { 'nodejs':
    version   => 'v0.10.17',
    with_npm  => true,
}




#
# install packages
#

package { "bower":
    ensure      => installed,
    provider    => npm
}

package { "karma":
    ensure      => installed,
    provider    => npm
}

package { "grunt-cli":
    ensure      => installed,
    provider    => npm    
}




#
# run bower and install angular
#
# exec { "run_bower":
#     command => "bower install",
#     cwd     => "/home/vagrant/wwwroot",
#     user    => 'root',
#     require => Package["bower"]
# }