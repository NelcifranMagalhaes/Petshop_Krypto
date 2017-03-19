require 'test_helper'

class DogTest < ActiveSupport::TestCase

 
test "should not save dogs without name" do
  dog = Dog.new
  assert_not dog.save, "Saved the dog without a name"
end
end
