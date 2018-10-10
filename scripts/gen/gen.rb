#!/usr/bin/env ruby

require 'fileutils'

ext, *name = ARGV
mode  = ''

def help
  abort 'Usage: gen [--html, --c] [FOLDER]'
end

help() unless ext =~ /^(\-)+/ && !name.empty?

ext.sub(/^(\-)+(\w)/) { mode = $2 }

# Inserts code snippets into the files
module Boilerplate
  def self.html ext
    case ext
    when 'html'
      <<~EOF
        <!DOCTYPE html>
        <html>
            <head>
                <meta name="viewport" content="height=device-height, width=device-width, initial-scale=1">
                <link rel="stylesheet" type="text/css" href="css/style.css">
                <title>~</title>
            </head>
            <body>
                <script type="text/javascript" src="js/script.js"></script>
            </body>
        </html>
      EOF
    when 'css'
      <<~EOF
        @charset "UTF-8";

        * {
            margin: 0;
            padding: 0;
            list-style: none;
            text-decoration: none;
        }

        :root {
            --scheme: #000;
        }
      EOF
    when 'js'
      <<~EOF
        const $  = (e) => document.querySelector(e),
              $$ = (e) => document.querySelectorAll(e);
      EOF
    end
  end

  def self.c ext
    case ext
    when 'c'
      <<~EOF
        #include <stdio.h>

        int main(int argc, char *argv[])
        {
            return 0;
        }
      EOF
    end
  end
end

module Generator
  def setMode mode
    @mode = mode
  end

  def status data
    puts "\e[32mOK\e[0m created \e[31m#{data}\e[0m"
  end

  def mkdir(folder, subdirs)
    if !test(?e, folder)
      FileUtils.mkdir(folder)
      status(folder)

      subdirs.each { |dir| FileUtils.mkdir(folder + File::SEPARATOR + dir); status(dir) }
    end
  end

  def touch(folder, files)
    files.each do |path|
      File.open("#{folder}/#{path}", 'w+') do |f|
        f << eval("Boilerplate.#{@mode}('#{File.extname(f)[/!(\.)|\w+/]}')")
        status(path)
      end
    end
  end
end

# Handles flags and creates routines
class Gen
  include Generator

  def initialize(mode, name, subdirs, files)
    @mode    = mode
    @name    = name.join(' ')
    @subdirs = subdirs
    @files   = files
  end

  %w[html c].each do |mode|
    define_method(mode) { setMode(mode); mkdir(@name, @subdirs); touch(@name, @files) }
  end
end

MODES = {
  h: -> { Gen.new(mode, name, %w[css js img fonts], %w[index.html css/style.css js/script.js]).html },
  c: -> { Gen.new(mode, name, %w[src bin], %w[src/main.c]).c }
}.freeze

MODES[mode.to_sym][]

at_exit { puts "\e[34mDONE\e[0m" }
