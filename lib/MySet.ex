defmodule MySet do
  def new do
    []
  end

  def isEmpty(set) do
    size(set) == 0
  end

  def add(set, item) do
    case contains?(set, item) do
       true -> set
       false -> [item | set]
    end
  end

  def size(set) do
    length(set)
  end

  def contains?([], _), do: false
  def contains?([head | _], head), do: true
  def contains?([_ | tail], item), do: contains?(tail, item)

  def remove(pre, [], _), do: pre
  def remove(pre, [head | tail], head), do: pre ++ tail
  def remove(pre, [head | tail], item), do: remove([head | pre], tail, item)
  def remove(set, item), do: remove([], set, item)
end
