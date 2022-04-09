# Validator

A simple validator of file extensions

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `validator` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:validator, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/validator>.

## Usage

Basic console usage:
```
$ iex -S mix

iex> file = "lib/test/myfile.test.png"
  ...
iex> Path.extname(file)
".png"
```

Application/Validation usage: 
```
$ iex -S mix
iex> Validator.valid?("filename.jpg")
  ...
```
