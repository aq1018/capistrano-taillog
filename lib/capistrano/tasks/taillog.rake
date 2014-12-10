namespace :load do
  task :defaults do
    load "capistrano/taillog/defaults.rb"
  end
end

namespace :logs do
  desc "Tail remote logs"
  task :tail do
    ask(:file, fetch(:default_log))
    on roles(:all) do
      path = File.join(fetch(:log_path), fetch(:file))
      if test("[ -f #{path} ]")
        execute :tail, '-f', path
      else
        fatal "#{path} does not exist!"
      end
    end
  end
end
