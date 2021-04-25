defmodule Inmana.WelcomerTest do
  use ExUnit.Case

  alias Inmana.Welcomer

  describe "welcome/1" do
    test "when the user is special, return special message" do
      params = %{"name" => "banana", "age" => "42"}

      result = Welcomer.welcome(params)

      assert result == {:ok, "YO SPECIAL YO ARE"}
    end

    test "when the user is not special, returns message" do
      params = %{"name" => "jose", "age" => "25"}

      result = Welcomer.welcome(params)

      assert result == {:ok, "WELCOME jose"}
    end

    test "when the user is under age, returns message" do
      params = %{"name" => "andre", "age" => "15"}

      result = Welcomer.welcome(params)

      assert result == {:error, "GET OUT OF HERE andre YOU ARE UNDERAGE"}
    end
  end

end
