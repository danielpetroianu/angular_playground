
package { "git-core":
    ensure      => installed
}

#
# install node js
#

class { 'nodejs':
    version     => 'stable',
    with_npm    => true,
    require     => Package["git-core"]
}


#
# install packages
#

package { ["bower", "karma", "grunt-cli"]:
    ensure      => installed,
    provider    => npm    
}


#
# run bower and install angular
#
exec { "bower_install":
    command     => "bower install --allow-root",
    path        => "/usr/local/bin/:/urs/bin/",
    cwd         => "/var/www/",
    user        => 'root',
    logoutput   => 'on_failure',
    refreshonly => false,
    require     => [ Package["git-core"] , Package["bower"] ]
}


include apt
#
Exec <| title=='apt_update' |> {
    refreshonly => false,
    before      => Package["vim"]
}

package { "vim":
    ensure      => installed,
}