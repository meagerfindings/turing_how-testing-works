class Student
  attr_reader :name, :laptop, :cookie

  def initialize(name)
    @name = name
  end

  def add_laptop(laptop)
    @laptop = laptop
  end

  def add_cookie(cookie)
    @cookie = cookie
  end

end