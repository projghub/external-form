class NullObject
  def method_missing(*args, &block)
    self
  end

  def nil?
    true
  end
end

def Maybe(value)
  value.nil? ? NullObject.new : value
end
