# HTML2MdEx

Wraps the Rust package [html2md](https://gitlab.com/Kanedias/html2md) to convert HTML to Markdown.
Note: Only markdown 1.0 is supported (no GFM, tables, etc).

I personally found this useful for doing RAG (Retrieval-Augmented Generation). If you're indexing 
actual webpages, the LLMs are generally fine with handling deeply nested messes. But, in my 
experience, converting to markdown provides the following benefits:

1. Size reduction & Cost efficiency, because markdown is generally more compact than HTML
2. Which in turn, allows the embeddings to capture greater meaningful semantic context
3. Which also allows more logical chunking for the embeddings

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
