  require_relative('../db/sql_runner')

class Order

  attr_reader(:name, :address, :size, :quantity, :id)

  def initialize(input)
    @name = input["name"]
    @address = input["address"]
    @size = input["size"]
    @quantity = input["quantity"].to_i
    @id = input["id"].to_i
  end

  def self.all()
    sql = "SELECT * FROM orders"
    orders = SqlRunner.run(sql)
    result = orders.map {|order| Order.new(order) }
    return result
  end

  def total()
    @quantity * 32.5
  end

  def save()
    sql = "INSERT INTO orders (name, address, size, quantity) VALUES ('#{name}', '#{address}', '#{size}', '#{quantity}') RETURNING *"
    order = SqlRunner.run(sql).first
    @id = order['id'].to_i
  end

end