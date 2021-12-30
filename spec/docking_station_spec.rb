
require './lib/docking_station.rb'
require './lib/bike.rb'

describe DockingStation do

   
     describe '#release_bike' do
      it 'responds to release bike' do
          docking_station = DockingStation.new
          expect(subject).to respond_to :release_bike
      end
     
  
      it { is_expected.to respond_to :release_bike }

      it 'releases working bikes' do
          @bikes =  [] 
          bike = subject.release_bike
          expect(bike).to be_working
      end 
  

    it { is_expected.to respond_to(:dock).with(1).argument }
    
    it { is_expected.to respond_to(:bike) }
    
    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end

  it 'returns docked bikes' do
    bike = Bike.new
    20.times { subject.release_bike }
    expect(subject.bike).to eq bike
  end 

  describe '#release_bike' do
    it 'raises an error when there are no bikes available' do
      
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end

  describe '#dock' do
    it 'raises an error when full' do
      20.times { subject.dock(Bike.new) }
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'
    end
  end
end
end