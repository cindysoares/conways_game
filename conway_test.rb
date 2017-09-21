require './conway.rb'

describe 'Conway´s game' do 

	describe '#alive rule' do

		context '1) Any live cell with fewer than two live neighbours dies, as if caused by underpopulation.' do

			it 'zero alive neighbours should be dead' do
				expect(Conway.visit(1, [0,0,0])).to eq 0
			end 
			it 'two alive neighbours should be alive' do
				expect(Conway.visit(1, [0,1,1])).to eq 1
			end
		end

		context '2) Any live cell with two or three live neighbours lives on to the next generation.' do

			it 'three alive neighbours should be alive' do
				expect(Conway.visit(1, [1,1,1])).to eq 1
			end

		end

		context '3) Any live cell with more than three live neighbours dies, as if by overpopulation.' do

			it 'four alive neighbours should be dead' do
				expect(Conway.visit(1, [1,1,1,1])).to eq 0
			end

		end

	end

	describe '#dead rule' do

		context '4) Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.' do

			it 'three alive neighbours should be alive' do
				expect(Conway.visit(0, [1,1,1])).to eq 1
			end

			it 'two alive neighbours should be dead' do
				expect(Conway.visit(0, [1,1,0])).to eq 0
			end

			it 'four alive neighbours should be dead' do
				expect(Conway.visit(0, [1,1,1,1])).to eq 0
			end

		end

	end

	describe '#initialize' do
		context 'a 3x3 board' do
			conway = Conway.new 3
			it 'should have 3 lines' do				
				expect(conway.board.count).to eq 3
			end
			it 'should have 3 columns' do
				expect(conway.board[0].count).to eq 3
			end

		end

	end

	
end