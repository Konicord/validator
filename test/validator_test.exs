defmodule ValidatorTest do
  use ExUnit.Case
  doctest Validator

  test "file validation should be false" do
    file = "file.exe"
    assert Validator.valid?(file) == false
  end

  test "file validation should be true" do
    file = "file.png"
    assert Validator.valid?(file) == true
  end
end
