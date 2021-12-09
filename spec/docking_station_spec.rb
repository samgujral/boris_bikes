# spec/docking_station_spec.rb
require 'docking_station.rb'

describe DockingStation do
 it {is_expected.to respond_to :release_bike}  

  it 'releases working bike' do
    bike = subject.release_bike
    expect(bike).to be_working
  end
end

#describe DockingStation do
#  it {is_expected.to :release_bike
#      is_expected.to :working?}  
# end


#  it do
#  {
    
    
#    expect(release_bike()).to be(Bike)
#  }



#describe DockingStation do
#  it docking_station = DockingStation do
#   end
#end