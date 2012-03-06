
class  CartesianProduct
  include Enumerable
  def initialize a, b
    @product =  a.product(b)
  end

  def to_a
   @product
  end
  def each &block
    @product.each &block
  end
end