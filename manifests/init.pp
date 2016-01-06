# Creates settings.xml in ~/.m2/ for given user
class m2_settings(
    $user,
    $settings_xml_path,
){
    file { "/home/${user}/.m2":
        ensure => 'directory',
        owner  => $user,
        group  => $user
    } ->
    file { "/home/${user}/.m2/settings.xml":
        source => $settings_xml_path,
        mode   => '0664',
        owner  => $user,
        group  => $user
    }
}

