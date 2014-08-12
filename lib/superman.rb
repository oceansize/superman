class Superman

  def initialize
    @status = :landed
    @good   = true
  end

  def status
    @status
  end

  def fly!
    @status = :flying
    return self
  end

  def land!
    @status = :landed
    return self
  end

  def turn_bad!
    @good = false
  end

  def good?
    @good
  end

  def turn_good!
    @good = true
  end

  def fight_with(bad_guy)
    bad_guy.turn_good!
  end

end