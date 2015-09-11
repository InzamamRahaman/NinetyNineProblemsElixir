defmodule NN.ListProbs do

  @moduledoc """
    This module implements the solutions
    for the list problems described in the
    ninety nine problems listing
  """

  @doc """
    The 'last' function computes the last element of the
    list provided should the list be non-empty
    If the list is empty, however, 'last' will return an atom ':none'
    If the list is non-empty, then a tuple containing the last element, l
    is returned as '{:some, l}'
  """
  def last(xs) do
    case xs do
      [] -> :none
      [x] -> {:some, x}
      [h | tail] -> last(tail)
    end
  end

  @doc """
    'last_two' extracts from a list, the last two elements
  """
  def last_two(xs) do
    case xs do
      [x, y] -> {:some, {x, y}}
      [h | tail] -> last_two(tail)
      _ -> :none
    end
  end

  @doc """
    'at' allows us to extract the element located at a specific
    element of the list. NB the list is 1-indexed
  """
  def at(k, xs) when k === 1 do
    case xs do
      [] -> :none
      [h | _] -> {:some, h}
    end
  end

  def at(k, xs) do
    case xs do
      [] -> :none
      [_ | rest] -> at(k - 1, rest)
    end
  end

  defp tail_rec_len([], acc) do
    acc
  end

  defp tail_rec_len([_ | rest], acc) do
    tail_rec_len(rest, acc + 1)
  end

  @doc """
    Computes the lenght of the given list
  """
  def length(xs) do
    tail_rec_len(xs, 0)
  end

  defp reverse_helper(xs, []) do
    xs
  end

  defp reverse_helper(xs, [y | ys]) do
     reverse_helper([y | xs], ys)
  end

  @doc """
    Reverses the list provided.
    For example reverse([1,2,3]) yields [3, 2, 1]
  """
  def reverse(ys) do
    reverse_helper([], ys)
  end

end
