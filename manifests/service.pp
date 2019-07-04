class nexus_exporter::service (
  $service_ensure   = $nexus_exporter::service_ensure,
  $service_enable   = $nexus_exporter::service_enable,
  $service_template = $nexus_exporter::service_template,
  $service_file     = $nexus_exporter::service_file,    
) {

  file { 'nexus_exporter:service:install-unit-file':
    ensure  => 'present',
    path    => $service_file,
    content => template($service_template),
    mode    => '0644',
  }

  exec { 'nexus_exporter:service:reload-daemon':
    command     => '/bin/systemctl daemon-reload',
    subscribe   => [
      File['nexus_exporter:service:install-unit-file'],
    ],
    refreshonly => true,
  }

  service { 'nexus_exporter:service':
    ensure     => $service_ensure,
    enable     => $service_enable,
    name       => 'nexus_exporter',
  }
}
