defmodule PrimefinderTest do
  use ExUnit.Case
  doctest Primefinder

  test "when counting primes in 0..10 then 4 numbers are found" do
    range = Enum.to_list(1..10)
    assert Primefinder.find_primes_in_range(range) == 4
  end

  test "when counting primes in 0..20 then 8 numbers are found" do
    range = Enum.to_list(1..20)
    assert Primefinder.find_primes_in_range(range) == 8
  end

  test "when counting primes in 0..100 then 25 numbers are found" do
    range = Enum.to_list(1..100)
    assert Primefinder.find_primes_in_range(range) == 25
  end

  test "when counting primes in 0..500 then 95 numbers are found" do
    range = Enum.to_list(1..500)
    assert Primefinder.find_primes_in_range(range) == 95
  end
end
