=begin

# spec/bike_spec.rb
require 'bike.rb'

describe Bike do
 it { is_expected.to respond_to :working? }
end

=end

require './lib/docking_station.rb'
require './lib/bike.rb'

describe Bike do 
    it Bike do
    end 
end
describe Bike do
    describe '#working?' do
        it 'responds to working?' do
            my_bike = Bike.new
            expect(my_bike.working?).to eq(true)
        end
    end
end

