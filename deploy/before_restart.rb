::File.open("/tmp/dhdbg-#{__FILE__.gsub('/', '_')}", 'w') do |file|
  file.puts "dhdbg #{`whoami`}: #{Time.now}, #{__FILE__}, #{release_path}/config/database.yml='#{`cat #{release_path}/config/database.yml`}'"
end
sleep 5