class nexus_exporter::install (
  $script_dir = $nexus_exporter::script_dir,
) {

  file { $script_dir:
    ensure => 'directory',
  }

  file { ' nexus_exporter:install:script':
    ensure  => 'present',
    path    => "${script_dir}/exporter.py",
    mode    => '0644',
    source => "puppet:///modules/nexus_exporter${script_dir}/exporter.py",
  }

  file { 'nexus_exporter:install:config_file':
    ensure  => 'present',
    path    => "${script_dir}/config.yml",
    mode    => '0644',
    content => template("nexus_exporter${script_dir}/config.yml.erb"),
  }
}
