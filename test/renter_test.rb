# the first two require statements bring in the minitest autorun and pride gems to the project. Way back when, I installed the gems on my computer.
require 'minitest/autorun'
require 'minitest/pride'
# this lets this test file know about the renter file in the lib directory, so we can test the Renter class
require './lib/renter'

# all our tests for a class live in a test class. It inherits from the Minitest class (which we required on line 2)
class RenterTest < Minitest::Test

  # the test method must start with "test_" to run.
  # the test name should describe the expected functionality
  def test_it_exists
    # create an instance of renter so we can test it
    jessie = Renter.new("Jessie")
    # assert it is an instance of the Renter class
    assert_instance_of Renter, jessie
  end

  def test_it_has_a_name
    jessie = Renter.new("Jessie")
    # assert that the string that was passed in as an argument is the same as the return value when we call .name
    # essentially, we are making sure that we correcly stored the instance variable with the argument, and wrote an attr_reader
    assert_equal "Jessie", jessie.name
  end

end
