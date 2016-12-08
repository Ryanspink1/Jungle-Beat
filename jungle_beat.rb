require_relative "linked_list"
# require "pry"


class JungleBeat
    attr_reader :list
    attr_accessor :voice, :rate

    def initialize
        @list = LinkedList.new
        @voice = "Boing"
        @rate = 800
    end


# I'm tired, so these will be brief. Taking input data, breaking it into an array of strings,
#   and iterating each one through list.append...effectively appending each string within the 
#   array.
    def append(data)
        data.split.each do |appender|
        list.append(appender)
        end
    end

    #accessing count from linked_list

    def count
        list.count
    end

    #setting the variable equal to the array of stringed data from the nodes_to_strings
    #PLAYING THAT FUNKY MUSIC

    def play
        text_to_speech = @list.nodes_to_strings
        `say -r #{@rate} #{@voice} #{text_to_speech}`
    end
#holy smokes, it works. 




end


# binding.pry