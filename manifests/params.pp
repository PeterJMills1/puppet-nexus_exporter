class nexus_exporter::params {

#Exporter Config

  $exporter_port           = 9184 
  $namespace               = 'nexus'              
  $log_level               = 'info'
  $host                    = 'localhost'
  $nexus_user              = 'metrics_exporter'
  $nexus_user_password     = 'metrics'
  $json_data_url           = 'http://127.0.0.1:8081/service/metrics/data'
  $metric_name_prefix      = 'nexus'

#Install Config

  $script_location         = '/opt/nexus_metrics_exporter/'
  $script_name             = 'exporter.py'
  $config_location         = '/opt/nexus_metrics_exporter/'
  $config_name             = 'config.yml'

#Service Config

  $service_ensure   = 'running'
  $service_enable   = true
  $service_template = 'nexusmetrics/nexus_exporter.service.erb'
  $service_file     = '/usr/lib/systemd/system/nexus_exporter.service' 

}
