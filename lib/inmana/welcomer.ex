defmodule Inmana.Welcomer do

  def welcome(%{"name" => name, "age" => age}) do
    age = String.to_integer(age)

    name
    |> String.trim()
    |> String.downcase()
    |> evaluate(age)
  end

  defp evaluate("banana", 42) do
    {:ok, "YO SPECIAL YO ARE"}
  end

  defp evaluate(name, age) when age >= 18 do
    {:ok, "WELCOME #{name}"}
  end

  defp evaluate(name, age) do
    {:error, "GET OUT OF HERE #{name} YOU ARE UNDERAGE"}
  end
end
