require_relative "tree_node.rb"

class KnightPathFinder

    def initialize(position)
        # @position = position
        # @grid = Array.new(8) { Array.new(8) }
        @starting_pos = position
        @root_node = PolyTreeNode.new(starting_pos)
        @considered_position = []

    end

    def find_path
        # add child
    end

    def build_move_tree()

    end

    def self.valid_moves(pos)
        r, c = pos
        return false if r < 0 || r > 7
        return false if c < 0 || c > 7
    end

    def new_move_positions(pos)
        KnightPathFinder.valid_moves(pos)
    end

end


    # def get_pos
    #     gets.chomp
    # end

    # def valid_pos?(arr)

    # end

current_pos = (3,3)
