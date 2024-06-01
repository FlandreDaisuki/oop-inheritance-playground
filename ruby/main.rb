class Base
  def initialize
    fn
    @msg = 'base'
  end

  def fn
    puts 'Base:'
    puts caller
  end
end

class Derived < Base
  def initialize
    super
    @msg = 'derived'
  end

  def fn
    puts 'Derived:'
    puts caller
  end
end

Derived.new
