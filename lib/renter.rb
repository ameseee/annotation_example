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
