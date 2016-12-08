# require 'pry'
require_relative 'node.rb'


class LinkedList
    attr_accessor :head

    
    def initialize
        @head = nil
    end

    #   append, in order:
    #1. The method "append" is creating a new node at the @head spot if @head is empty
    #2. If the @head spot is filled, it creates a new variable equal to head
    #   - It then does "until the next node of the master node is equal to nil,
    #   - loop through setting the master node to the next node, until the next node 
    #   - has no value. Then, create a new node in the node that has no value.

    def append(data)
        if @head == nil
            @head = Node.new(data)
        else
            master_node = @head
            until master_node.next_node === nil
                master_node = master_node.next_node
            end
        master_node.next_node = Node.new(data)
        end
    end



    #   pop, in order:

      def pop
        master_node = @head
            until master_node.next_node === nil
                master_node = master_node.next_node
            end
        master_node.data = nil.to_s
        end
 
    #Want it to be this, but I can't figure out how to delete a node..setting it to nil doesn't work...
    #
    # def pop
    #     master_node = @head
    #         until master_node.next_node === nil
    #             master_node = master_node.next_node
    #         end
    #     master_node = nil
    #     end



   
    


    #   nodes_to_strings, in order:
    #-  Here we're using the same "until" statement that we used for the method "append". 
    #1. The program creates a string "abalone", moves the @head data to it, and sets the stage
    #   for the "until" statement but setting the variable "master-node" to "@head.next_node"
    #2. The program then iterates through every node, adding it's data to the string until
    #   it reaches the end of the nodes (when master_node.next_node (called master_node) is nil"

    
    def nodes_to_strings
        abalone = " "
        abalone << @head.data + " "
        master_node = @head.next_node 
        until  master_node === nil 
            abalone << master_node.data + " "
           master_node = master_node.next_node
         end
        abalone
    end

    #   count, in order
    #1. The method "count" takes the method "nodes_to_strings" to creates a separated string 
    #   compendium of the all of the node datas.
    #2. The string of data is then "split" into separate strings, within the original string
    #3. and the number of strings inside are counted with "length"


    def count
        count = nodes_to_strings.split.length
    end



    #   find, in order
    #1. Find takes the input then creates a new string to store the eventual string of data and sets
    #   a counter to 0. Unless the counter = the length specified, find will keep adding the index
    #   output(a string each time) from "nodes_to_strings"(split, so they are accessible by index)
    #   to "string_of_strings" until the desired number of strings post-first string are added (when counter = length). 


    def find(position, length)
        string_of_strings = " "
        counter = 0
            until counter == length
                string_of_strings << nodes_to_strings.split[position+counter]+" "
                 counter += 1
            end
        string_of_strings
    end

    #  includes, in order
    #  includes creates a new string variable, uses nodes_to_strings.split to create an array of strings
    #  comprised of each nodes data. It then uses the ".include?" method to search for the word you desired
    #  within string_of_strings.
    


    def includes(word)
        string_of_strings = " "
        string_of_strings = nodes_to_strings.split
        string_of_strings.include? word
    end


    #   prepend, in order: 
    #1. Prepend checks if the first spot (@head) is empty. If it is, it creates a new node there.
    #2. If the @head spot has a value already in it,it then creates a new node, tells @head that
    #   it's now the next node (compared to new node), and sets the value of the new @head to the new node
    #   that was created. 

    def prepend(data)
        if @head == nil
            @head = Node.new(data)
        else
         prepend_node = Node.new(data)
            prepend_node.next_node = @head
            @head = prepend_node
            end
    end



    # def insert(position, data)
    #     this_node = @head
    #     tick = 1
    #     unless tick == position
    #   this_node = this_node.next_node
    #     tick += 1 
    # end
    #     new_node = Node.new (data)
    #     remaining_nodes = this_node.next_node
    #     this_node.next_node = new_node
    #     new_node.next_node = remaining_nodes 



    # insert, in order
    #   insert takes the input data position and word. It then sets the variable "master_node" to equal @head
    #   and starts a counter at 1. The program then goes (from the beginning) down the list of nodes until it has
    #   gone "position" spaces. Once it has found it's place, it then inserts a new node in that place with your "word"
    #   input. 

    def insert(position, word)
      master_node = @head
      tick = 1
        unless tick == position
          master_node = master_node.next_node
          tick += 1
        end
      node_to_insert = Node.new(word)
      node_to_insert.next_node = master_node.next_node
      master_node.next_node = node_to_insert
    end
  end



# binding.pry