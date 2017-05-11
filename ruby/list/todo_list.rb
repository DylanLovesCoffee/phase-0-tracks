class TodoList
  def initialize(array)
    @array = array
  end

  def get_items
    @array
  end

  def add_item(item)
    @array.push("#{item}")
  end

  def delete_item(string)
    @array.delete("#{string}")
  end

  def get_item(index)
    return @array[index]
  end
end
