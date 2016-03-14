require 'rails_helper'

RSpec.describe Micropost, type: :model do

  before :all do
    5.times { |t|
      User.create(name: "test_" + t.to_s ,email: t.to_s + "mail@mail.mail")
    }
  end
  
  context 'validation error' do
    describe 'contents'do
      context 'no contents' do
        it 'short'do
          micropost = Micropost.new(content: "aaaa",user_id: User.first.id)
          expect(micropost.valid?).to be false
        end  
      end
    end
  end
end
