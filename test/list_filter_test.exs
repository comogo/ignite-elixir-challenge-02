defmodule ListFilterTest do
  use ExUnit.Case
  doctest ListFilter

  describe "call/1" do
    test "returns zero when list is empty" do
      result = ListFilter.call([])
      expectation = 0

      assert result == expectation
    end

    test "returns zero when list has no valid numbers" do
      result = ListFilter.call(["a1", "foo", "123x"])
      expectation = 0

      assert result == expectation
    end

    test "returns zero when list has no odd numbers" do
      result = ListFilter.call(["2", "foo", "4"])
      expectation = 0

      assert result == expectation
    end

    test "returns the count of odd numbers" do
      result = ListFilter.call(["2", "foo", "3", "55"])
      expectation = 2

      assert result == expectation
    end
  end
end
