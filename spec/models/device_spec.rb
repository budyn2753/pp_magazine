require 'rails_helper'

RSpec.describe Device, type: :model do


  begin

    it 'has a valid factory' do
      expect(create(:device)).to be_valid
    end
    it 'is invalid without a name' do
      expect(build(:device, name: nil)).not_to be_valid
    end
    it 'is invalid without a parent' do
     expect(build(:device, category: nil)).not_to be_valid
    end

    describe 'asocciation' do
      it {should belong_to(:category)}
    end
    describe "Validations" do
      it{should validate_presence_of(:name)}
      subject {create(:device)}
      it{should validate_uniqueness_of(:name).case_insensitive}
    end

  end
  #pending "add some examples to (or delete) #{__FILE__}"
end
