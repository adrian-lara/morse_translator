require 'pry'

class Translate

  #have array of arrays,
  #each array is [alpha, morse]
  #for each element in the array
  #message.gsub(key, value)
  def eng_to_morse(message)
    alpha_to_morse = []
    File.open('morse_list.txt', "r").readlines("\n").each do |line|
      alpha_to_morse << line.chomp.split(' ', 2)
    end

    alpha_to_morse.map do |alpha_morse|
      message.gsub(alpha_morse[0], alpha_morse[1])
    end
  end

  def from_file(file)
    message = File.open(file, "r").read.chomp

    eng_to_morse(message)
  end


end
