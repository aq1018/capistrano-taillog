mespace :logs do
  task :tail, :file do |t, args|
    ask(:file, fetch(:default_log)
    on roles(:all) do
      path = File.join(fetch(:log_path), fetch(:file))
      execute :tail '-f', file
    end
  end
end
