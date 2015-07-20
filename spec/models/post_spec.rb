require 'rails_helper'

describe Post do
  it { should belong_to(:user) }
  it { should have_many(:comments).dependent(:destroy) }

  it { should validate_presence_of(:image) }
  it { should validate_presence_of(:user_id) }
  it { should validate_length_of(:caption).is_at_least(2).is_at_most(300) }
end
