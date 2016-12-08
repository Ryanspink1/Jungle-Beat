require 'minitest/autorun'
require 'minitest/pride'
require_relative 'node.rb'
require_relative 'linked_list.rb'


class LinkedListTest < Minitest::Test


    def test_head_is_nil
        list = LinkedList.new
        assert_equal nil, list.head
    end


    def test_append_appends 
        list = LinkedList.new
        list.append("doop")
        list.append("wat")
        list.append("do")
        assert_equal " doop wat do ", list.nodes_to_strings
    end

    def test_count
        list = LinkedList.new
        list.append("doop")
        list.append("hello")
        assert_equal 2, list.count
    end

    def test_nodes_to_string
        list = LinkedList.new
        list.append("doop")
        list.append("hello")
        assert_equal " doop hello ", list.nodes_to_strings
    end

    def test_find
        list = LinkedList.new
        list.append("doop")
        list.append("hello")
        list.append("wat")
        list.append("do")
        assert_equal " doop hello ", list.find(0, 2)
    end

    def test_includes
        list = LinkedList.new
        list.append("doop")
        list.append("hello")
        list.append("wat")
        list.append("do")
        assert_equal true, list.includes("do")
    end

    def test_prepend
        list = LinkedList.new
        list.append("hello")
        list.prepend("wat")
        assert_equal " wat hello ", list.nodes_to_strings
    end

    def test_insert
        list = LinkedList.new
        list.append("doop")
        list.append("hello")
        list.append("wat")
        list.insert(1, "bling")
        assert_equal " doop bling hello wat ", list.nodes_to_strings
    end

   
        
        

    
    
end
