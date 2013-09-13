
# ######################################## #
# install node js
# ######################################## #
class { 'nodejs':
    version     => 'v0.10.17',
    with_npm    => true
}


# ######################################## #
# install packages with NPM
# ######################################## #
package { ["yo", "bower", "grunt-cli"]:
    ensure      => installed,
    provider    => npm,
    require     => Class["nodejs"]
}

# ######################################## #
# install yoeman generators
# ######################################## #
package { "generator-angular":
    ensure      => installed,
    provider    => npm,
    require     => Package["yo"]
}


# ######################################## #
# Setup angular app with YO
# ######################################## #

file { "/home/vagrant/wwwroot":
    ensure => "directory"
}

exec { "yo_angular":
    command     => "yes | yo angular",
    path        => "/usr/local/bin/:/usr/bin/",
    cwd         => "/home/vagrant/wwwroot/",
    creates     => "/home/vagrant/wwwroot/app",
    user        => 'root',
    logoutput   => 'on_failure',
    refreshonly => false,
    require     => [
        Package["yo"],
        Package["generator-angular"],
        File["/home/vagrant/wwwroot"]
    ]
}


file_line { "update hostname in gruntfile": 
    line        => "        hostname: '0.0.0.0'", 
    path        => "/home/vagrant/wwwroot/Gruntfile.js", 
    match       => "hostname: '.*'", 
    ensure      => present,
    require     => [
        Exec["yo_angular"],
        File["/home/vagrant/wwwroot/Gruntfile.js"]
    ]
}

# ######################################## #
# Utilities
# ######################################## #
include apt

Exec <| title=='apt_update' |> {
    refreshonly => false,
    before      => [
        Package["vim"],
        Package["git-core"]
    ]
}

package { "vim":
    ensure      => installed,
}

package { "git-core":
    ensure      => installed
}
