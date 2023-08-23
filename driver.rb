require_relative 'rover'

def main(filename)
  results = []

  File.open(filename, 'r') do |file|
    plateau_x, plateau_y = file.gets.split.map(&:to_i)

    until file.eof?
      line = file.gets
      next if line.strip.empty?
      x, y, direction = line.split
      x, y = x.to_i, y.to_i

      rover = Rover.new(x, y, direction)

      commands = file.gets.strip
      commands.each_char { |command| rover.execute_command(command) }

      results << rover.to_s
    end
  end

rescue Errno::ENOENT
  puts "Error: File '#{filename}' not found."
rescue => e
  puts "An error occurred while processing the file: #{e.message}"
else
  puts results.join("\n")
end

input_file = ARGV[0]

if input_file.split('.').last.eql?('txt')
  main(input_file)
else
  puts "Input file must be .txt!"
end
