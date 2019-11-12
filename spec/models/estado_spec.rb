require 'rails_helper'

RSpec.describe Estado, type: :model do   

  it { should validate_presence_of(:nome) }
end
