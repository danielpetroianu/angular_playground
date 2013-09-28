include apt

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

exec { "yo_angular":
    command     => "yes n | yo angular",
    path        => "/usr/local/bin/:/usr/bin/:/bin:/usr/sbin:/sbin",
    cwd         => "/home/vagrant/wwwroot/",
    creates     => "/home/vagrant/wwwroot/app",
    user        => 'root',
    logoutput   => true,
    refreshonly => false,
    require     => [
        Package["yo"],
        Package["generator-angular"]
    ]
}


file_line { "update hostname in gruntfile": 
    line        => "        hostname: '0.0.0.0'", 
    path        => "/home/vagrant/wwwroot/Gruntfile.js", 
    match       => "hostname:\s*'.*'", 
    ensure      => present,
    require     => Exec["yo_angular"]
}

# ######################################## #
# Utilities
# ######################################## #
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
