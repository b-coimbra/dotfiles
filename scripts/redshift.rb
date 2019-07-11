#!/usr/bin/env ruby
# redshift.rb - tool for changing redshift's temperatures

class Stty
  attr_reader :ID

  def initialize
    @ID = `stty -g`
  end

  def disable_echo; system "stty raw -echo" end
  def hide_cursor;  system "tput civis"     end

  def reset
    system "stty #@ID"
    system "tput cnorm"
  end
end

class String
  { :cyan  => 36,
    :green => 32
  }.each do |color, value|
    define_method color do
      "\e[#{value}m" + self + "\e[0m"
    end
  end
end

class Render
  attr_reader :linesize

  def initialize
    @linesize = 11
    @chars = { bar: ?|, dash: ?- }
  end

  def goto_start
    print "\u001b[100D"
  end

  def goto position
    print "\e[#{position}C"
  end

  def clear_line
    print "\e[K"
  end

  def print_line
    print (@chars[:dash] * @linesize).green
  end

  def update position, temperature
    goto_start

    clear_line
    print_line

    goto_start
    goto(position)

    print @chars[:bar].cyan

    goto(position - @linesize)

    print (temperature.round.to_s + ?K).cyan
  end
end

class Redshift
  def initialize
    @stty = Stty.new
    @render = Render.new
    @bindings = %w(h l)
    @position = 10
    @base_temperature = 6500
    @temperature = 6500

    @stty.disable_echo
    @stty.hide_cursor

    loop do
      @render.update @position, @temperature

      input = STDIN.getc.chr

      set_position(input)
      set_temperature(temperature())

      quit if input == 'q'
    end
  end

  def temperature
    @temperature = (((@position * 10).to_f / 100) * (@base_temperature))
  end

  def set_temperature temperature
    `redshift -P -O #{temperature}` rescue Errno::ENOENT abort '[!] Redshift is not installed.'
  end

  def set_position input
    if input == 'h'
      @position -= 1 unless @position <= 0 || @temperature.to_f <= 1300.0
    elsif input == 'l'
      @position += 1 unless @position >= @render.linesize - 1
    elsif input == 'L'
      @position = 10
    elsif input == 'H'
      @position = 2
    end
  end

  def quit
    @stty.reset
    exit
  end
end

Redshift.new
