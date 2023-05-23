defmodule Html2MdEx do
  use Rustler,
    otp_app: :html2md_ex,
    crate: "html2ex_nif",
    cargo: :system

  @moduledoc """
  HTML2Md_Ex is a Rustler NIF that converts HTML to Markdown.
  """

  @doc """
  Convert HTML to Markdown.

  ## Examples

      iex> Html2MdEx.parse_html("<h1>Hello, world!</h1>")
      "Hello, world!\n=============="
  """
  @spec parse_html(binary) :: binary
  def parse_html(_html), do: error()

  defp error(), do: :erlang.nif_error(:nif_not_loaded)
end
