defmodule Validator do
  # regex
  @extension_whitelist ~w(.jpg .jpeg .gif .png .pdf)

  # the extensions are a string, we then receive booleans ("true" or "false")
  @type file_type() :: String.t()
  @spec valid?(file_type()) :: boolean()

  def valid?(file) do
    file_extension = get_ext(file)

    # check if the file extension is in the whitelist
    Enum.member?(@extension_whitelist, file_extension)
  end

  defp get_ext(file) do
    file
    |> Path.extname()
    |> String.downcase()
  end
end
