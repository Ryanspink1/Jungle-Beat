require 'minitest/autorun'
require 'minitest/pride'
require_relative 'node.rb'
require_relative 'linked_list.rb'
require_relative 'jungle_beat.rb'


class JungleBeatTest < Minitest::Test


    def test_head_is_nil
        jb = JungleBeat.new
        assert_equal nil, jb.list.head
    end


    def test_we_can_still_append
        jb = JungleBeat.new
        jb.append("deep doo dit")
        assert_equal " deep doo dit ", jb.list.nodes_to_strings
    end

    def test_head_is_where_we_want_it
        jb = JungleBeat.new
        jb.append("deep doo dit")
        assert_equal "deep", jb.list.head.data
    end


    def test_count
        jb = JungleBeat.new
        jb.append("deep doo dit")
        assert_equal 3, jb.count
    end

    def test_it_can_play
    end
end

