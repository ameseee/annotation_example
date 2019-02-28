# Annotation Example

This small repo provides an example of what code annotations might look like for a small class/test. Use this as a guide while you begin to annotate for pre-work.

```ruby
# declare Renter class
class Renter

  # this attr_reader creates a method called name, which returns the
  # value in the @name instance variable.
  attr_reader :name

  # the initialize method is called when an object is created byb calling
  #  .new on the class. Because one argument, name, is listed in the
  # parenthesis, any time I call .new on the class, it will expect one
  # argument
  def initialize(name)
  
    # create an instance variable called @name, which holds the value that was passing in as the name argument
    @name = name
  end

end
```

```
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
    # essentially, we are making sure that we correcly stored the instance variable with the argument, and wrote an  
    # . attr_reader
    assert_equal "Jessie", jessie.name
  end

end
```
