defmodule MySetTest do
  use ExUnit.Case

  test "is empty" do
    {empty, one, many} = getVars()

    assert MySet.isEmpty(empty)
    refute MySet.isEmpty(one)
    refute MySet.isEmpty(many)
  end

  test "size" do
    {empty, one, many} = getVars()
    assert MySet.size(empty) == 0
    assert MySet.size(one) == 1
    assert MySet.size(many) > 1
  end

  test "contains" do
    {empty, one, many} = getVars()
    refute MySet.contains?(empty, "1")
    refute MySet.contains?(empty, "2")
    assert MySet.contains?(one, "1")
    refute MySet.contains?(one, "2")
    assert MySet.contains?(many, "1")
    assert MySet.contains?(many, "2")
  end

  test "removes" do
    set = MySet.new()
    set = MySet.add(set, "1")
    set = MySet.add(set, "2")

    set = MySet.remove(set, "1")
    set = MySet.remove(set, "does not exist")

    assert MySet.size(set) == 1
    assert MySet.contains?(set, "2")
    refute MySet.contains?(set, "1")
  end

  test "uniqueness" do
    set = MySet.new()
    set = MySet.add(set, "1")
    set = MySet.add(set, "1")

    assert MySet.size(set) == 1
  end

  defp getVars do
    empty = MySet.new
    one = MySet.new
    many = MySet.new

    one = MySet.add(one, "1")
    many = MySet.add(many, "1")
    many = MySet.add(many, "2")

    {empty, one, many}
  end
end
