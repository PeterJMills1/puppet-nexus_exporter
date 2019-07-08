class nexus_exporter::params {

#Install Config
  $script_dir            = '/opt/nexus_exporter'
  $pip_modules          = [' pytz','objectpath','prometheus_client','pyYAML']

#Service Config
  $service_ensure        = 'running'
  $service_enable        = true
  $service_dir           = '/usr/lib/systemd/system'

#Exporter Script Config
  $exporter_port         = 9184           
  $log_level             = 'info'
  $nexus_user            = 'metrics_exporter'
  $nexus_user_password   = undef
  $json_data_url         = 'http://127.0.0.1:8081/service/metrics/data'
}
