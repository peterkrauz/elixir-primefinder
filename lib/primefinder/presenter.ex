defmodule Primefinder.Presenter do

  @spec get_number_range :: list
  def get_number_range do
    start_num = get_user_input("Please type the initial number\t") |> String.to_integer()
    end_num = get_user_input("Please type the last number\t") |> String.to_integer()
    Enum.to_list(start_num..end_num)
  end

  defp get_user_input(msg) do
    IO.gets(msg) |> String.trim()
  end
end
