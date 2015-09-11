defmodule NN.ListProbsTest do

  use ExUnit.Case, async: true

  @empty_list []
  @non_empty_list ["a", "b", "c", "d"]

  test "'last' function is correct for empty lists" do
    assert NN.ListProbs.last(@empty_list) == :none
  end

  test "'last' function is correct for non-empty lists" do
    assert NN.ListProbs.last(@non_empty_list) == {:some, "d"}
  end

  test "function to get last two elements work properly with non-empty lists" do
    assert NN.ListProbs.last_two(@non_empty_list) == {:some, {"c", "d"}}
  end

  test "function to get last two elements work properly with empty lists" do
    assert NN.ListProbs.last_two(@empty_list) == :none
  end

  test "function to get list element by index works properly for valid index" do
    assert NN.ListProbs.at(3, @non_empty_list) == {:some, "c"}
  end

  test "function to get list element by index works properly for invalid index" do
    assert NN.ListProbs.at(3, @empty_list) == :none
  end

end
