module Foo

  include SuperModule
  include FakeActiveModel
  validates 'foo', {:presence => true}

  def self.foo
    'self.foo'
  end

  # Defines singleton method via define_method to provide as a test case for SuperModule
  class << self
    send(:define_method, :meh) do
      self
    end
  end

  def foo
    'foo'
  end

end

