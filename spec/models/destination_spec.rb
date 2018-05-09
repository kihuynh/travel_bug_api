require 'rails_helper'

describe Destination do
  it { should validate_presence_of :country }
end
