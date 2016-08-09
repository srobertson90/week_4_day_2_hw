require('minitest/autorun')
require('minitest/rg')

require_relative('../models/order')

class TestShoo < MiniTest::Test

  def setup()
    @test_order = Order.new({
      "name" => "Test Customer",
      "address" => "5, street name, town",
      "size" => 7,
      "quantity" => 4
      })
  end

  def test_name
    assert_equal("Test Customer", @test_order.name)
  end

  def test_address
    assert_equal("5, street name, town", @test_order.address)
  end

  def test_size
    assert_equal(7, @test_order.size)
  end

  def test_quantity
    assert_equal(4, @test_order.quantity)
  end

  def test_total
    assert_equal(130, @test_order.total)
  end

end