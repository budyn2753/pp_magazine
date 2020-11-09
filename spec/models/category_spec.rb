require 'rails_helper'

RSpec.describe Category, type: :model do
  begin
    it 'has a valid factory' do
      expect(create(:category)).to be_valid
    end

    it 'is invalid without a name' do
      expect(build(:category, name: nil)).not_to be_valid
    end

    describe "Validations" do
      it{should validate_presence_of(:name)}
      subject {create(:category)}
      it{should validate_uniqueness_of(:name).case_insensitive}
    end
    # describe 'Have meny devices' do
    #    it {should have_meny(:device)}
    # end
  end


  #pending "add some examples to (or delete) #{__FILE__}"
end
