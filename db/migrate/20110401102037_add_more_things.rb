class AddMoreThings < ActiveRecord::Migration
  def self.up
    File.open('/tmp/dhdbg_from_migration', 'w') do |file|
      ENV.each do |key, value|
        file.puts "key='#{key}', value='#{value}'"
      end
    end
  end

  def self.down
  end
end
