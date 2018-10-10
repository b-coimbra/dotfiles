#!/usr/bin/env ruby
# encoding 'utf-8'

def get_hex data
  data.unpack('H*')
end

def store data
  File.open('data.txt', 'a+') { |f| f.puts *get_hex(data) }
  view
end

def view
  File.open('data.txt', 'r') do |f|
    f.each_line do |line|
      puts [line.strip].pack('H*') unless line[/^$\n/im]
    end
  end
end

flags = {
  s: -> { store(ARGV[1..-1].join(' ')) },
  v: -> { view }
}

flags[ARGV[0][1].to_sym].call unless ARGV.empty?
