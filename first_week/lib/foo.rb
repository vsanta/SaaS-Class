def attr_accessor_with_history *symbols
  symbols.each do | symbol |
    module_eval("def #{symbol}_history() @#{symbol}_history; end")
    module_eval( "def #{symbol}() @#{symbol}; end" )
    module_eval( "def #{symbol}=(val) @#{symbol} = val; @#{symbol}_history = [nil] if @#{symbol}_history.nil?; @#{symbol}_history.push(val); end" )
  end
end

class Foo
  attr_accessor_with_history :bar
end
