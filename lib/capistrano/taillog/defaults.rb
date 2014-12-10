# :log_path
# The path to where the log files are stored.
# Defaults to shared/log
set :log_path, -> {
  File.join(fetch(:shared_path), 'log')
}

# :default_log
#  The default log file. Change this to what you use the most
set :default_log, -> {
  "#{fetch(:stage)}.log"
}
