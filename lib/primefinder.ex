defmodule Primefinder do

  def find_primes_in_range(number_range) do
    chunk_size = Application.get_env(:primefinder, :chunk_size, 10)

    Enum.chunk_every(number_range, chunk_size)
    |> Enum.map(&count_primes_in_range/1)
    |> Enum.map(&Task.await/1)
    |> Enum.sum
  end

  defp count_primes_in_range(number_range) do
    Task.async(fn -> Enum.filter(number_range, &is_prime?/1) |> Enum.count end)
  end

  defp is_prime?(n) when n in [2, 3], do: true
  defp is_prime?(n) do
    floored_sqrt = :math.sqrt(n) |> Float.floor |> round
    !Enum.any?(2..floored_sqrt, &(rem(n, &1) == 0))
  end
end
