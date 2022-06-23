require File.expand_path('../../spec_helper', __FILE__)

module Pod
  describe Command::Privite do
    describe 'CLAide' do
      it 'registers it self' do
        Command.parse(%w{ privite }).should.be.instance_of Command::Privite
      end
    end
  end
end

