

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

    it 'can be reported broken' do
        subject.report_broken
        # let's use one of RSpec's predicate matchers
        expect(subject).to be_broken
      end

end

