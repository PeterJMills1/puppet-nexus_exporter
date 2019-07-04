class nexus_exporter (
  $exporter_port         = $nexus_exporter::params::exporter_port,          
  $log_level             = $nexus_exporter::params::log_level,
  $nexus_user            = $nexus_exporter::params::nexus_user,
  $nexus_user_password   = $nexus_exporter::params::nexus_user_password,
  $json_data_url         = $nexus_exporter::params::json_data_url,
  $script_dir            = $nexus_exporter::params::script_dir,
  $service_ensure        = $nexus_exporter::service_ensure,
  $service_enable        = $nexus_exporter::service_enable,
  $service_template      = $nexus_exporter::service_template,
  $service_file          = $nexus_exporter::service_file,  

) inherits nexus_exporter::params {

  class { 'nexus_exporter::install': } ->
  class { 'nexus_exporter::service': } ->
  Class['nexus_exporter']
}
