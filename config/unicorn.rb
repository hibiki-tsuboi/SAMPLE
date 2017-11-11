# -*- coding: utf-8 -*-

# Unicornのプロセスがリスンするアドレスとポートを指定
listen "127.0.0.1:3000"

# pid fileの位置を指定する
pid "tmp/pids/unicorn.pid"

# ワーカーの数を指定する
worker_processes 2

# リクエストのタイムアウト秒を指定する
timeout 15

# ダウンタイムを無くすため、アプリをプレロード
preload_app true

# Unicornのログ出力先を指定
ROOT = File.dirname(File.dirname(__FILE__))
stdout_path "#{ROOT}/log/unicorn-stdout.log"
stderr_path "#{ROOT}/log/unicorn_stderr.log"

before_fork do |server, worker|
  defined?(ActiveRecord::Base) and ActiveRecord::Base.connection.disconnect!

  old_pid = "#{server.config[:pid]}.oldbin"
  if old_pid != server.pid
    begin
      Process.kill :QUIT, File.read(old_pid).to_i
    rescue Errno::ENOENT, Errno::ESRCH
    end
  end
end

after_fork do |server, worker|
  defined?(ActiveRecord::Base) and ActiveRecord::Base.establish_connection
end
