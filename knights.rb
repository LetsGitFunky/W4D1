require_relative "tree_node.rb"

class KnightPathFinder

    ALL_MOVES = [[-2,-1],[-2,+1],[-1,-2], [-1,+2], [+1,-2],[+1,+2],[+2,+1],[+2,-1]]

    attr_reader :considered_position
    
    def initialize(position)
        # @position = position
        # @grid = Array.new(8) { Array.new(8) }
        @starting_pos = position
        @root_node = PolyTreeNode.new(@starting_pos) #[0,0]
        @considered_position = [@starting_pos]

    end

    def find_path
        # add child
    end

    def build_move_tree
        queue = [@root_node]
        until queue.empty?
            node = queue.shift
            self.new_move_positions(node.value).each do |pos|
                next_node = PolyTreeNode.new(pos)
                node.add_child(next_node)
                queue << next_node
            end 
        end 
    end

    def self.valid_moves(position)
        row , col = position 
        moves = []
        ALL_MOVES.each do |directions|
            row_move = directions[0] + row
            col_move = directions[1] + col 
            if row_move >= 0 && row_move <= 7 && col_move >=0 && col_move <=7 
                moves << [row_move,col_move]
            end 
        end 
        moves
    end

    def new_move_positions(pos)
        filtered_positions = KnightPathFinder.valid_moves(pos).reject {|new_pos| @considered_position.include?(new_pos)}
        filtered_positions.each do |pos|
            @considered_position << pos 
        end 
    end

end


    # def get_pos
    #     gets.chomp
    # end

    # def valid_pos?(arr)

    # end

