mespace :logs do
  task :tail, :file do |t, args|
    if args[:file]
      on roles(:app) do
        path = File.join(fetch(:log_path), args[:file])
      end
    else
      puts "please specify a logfile e.g: 'cap logs:tail[production.log]"
      puts "will tail 'shared_path/log/production.log'"
      puts "remember if you use zsh you'll need to format it as:"
      puts "cap 'logs:tail[logfile]' (single quotes)"
    end
  end
end
