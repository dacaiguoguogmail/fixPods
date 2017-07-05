require 'shellwords'
require 'pathname'
tofixpath = '/Users/sunyanguo/Desktop/uuid_generator.rb'
afile = Pathname.new(tofixpath)
all_to_fix_line = ''
afile.each_line {|line| 
  if line.strip.start_with?('duplicates = all_objects - @new_objects_by_uuid.values')
    to_fix_line = "        duplicates = []\n"
    all_to_fix_line = all_to_fix_line + to_fix_line
  else
      all_to_fix_line = all_to_fix_line + line
  end
}

puts all_to_fix_line
afile.open('w') { |file| file << all_to_fix_line }

class Test
    def initialize(args)
        
    end
    
    def self.split(flags)
      flags.strip.shellsplit.map do |string|
        if string =~ /\A-l.+/
          ['-l', string[2..-1]]
        else
          string
        end
      end.flatten
    end
    
end
# aaaa =  "they all ran after the farmers's wife".shellescape.shellsplit
# aaaa.each_index { |i| puts "#{i}-#{aaaa[i]}"}
# puts Test.split('-framework aaa -framework bbb')
