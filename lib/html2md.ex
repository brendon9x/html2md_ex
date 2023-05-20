defmodule Html2MdEx do
  use Rustler, otp_app: :html2md_ex, crate: "html2ex_nif"

  @spec parse_html(binary) :: binary
  def parse_html(_html), do: error()

  defp error(), do: :erlang.nif_error(:nif_not_loaded)
end
