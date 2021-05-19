class Animal
  attr_reader :kind, :weight, :age
  attr_accessor :weight_number, :age_number, :weight

  def initialize(kind, weight_number, age_number)
    @kind = kind
    @weight_number = weight_number
    @age_number = age_number
    @weight = "#{@weight_number} pounds"
    @age = "#{@age_number} weeks"
  end

  def age_in_days
    age_number * 7
  end

  def feed!(times_feed)
    @weight_number = (weight_number + times_feed)
  end
end
