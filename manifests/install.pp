class nexus_exporter::install (
  $script_location         = $nexus_exporter::script_location,
  $script_name             = $nexus_exporter::script_name,
  $config_location         = $nexus_exporter::config_location,
  $config_name             = $nexus_exporter::config_name,
) {

  file { '/opt/nexus_exporter/':
    ensure => 'directory',
  }

  file { ' nexus_exporter:install:script':
    ensure  => 'present',
    path    => '/opt/nexus_exporter/exporter.py',
    mode    => '0644',
    content => template('nexus_exporter/opt/nexus/exporter.py.erb'),
  }

  file { 'nexus_exporter:install:config_file':
    ensure  => 'present',
    path    => '/opt/nexus_exporter/config.yml',
    mode    => '0644',
    content => template('nexus_exporter/opt/nexus/config.yml.erb'),
  }
}
