# HTML2MdEx

Wraps the Rust package [html2md](https://gitlab.com/Kanedias/html2md) to convert HTML to Markdown.
Note: Only markdown 1.0 is support (no GFM, tables, etc)

> Note: This is a GPL'd package as the underlying Html2Md Rust package is GPL. Be aware of what that implies for your use case.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `html2md_ex` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:html2md_ex, "~> 0.1.0"}
  ]
end
```

The `parse_html` function will return a Markdown string:

```elixir
Html2MdEx.parse_html(html)
```