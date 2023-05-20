defmodule Html2mdExTest do
  use ExUnit.Case
  doctest Html2MdEx

  test "parse_html converts HTML to Markdown" do
    html = """
    <h1>Hello, world!</h1>
    <p>Intro
    <h2>Some secondary header</h2>
    <p>A List</p>
    <ol>
      <li>One</li>
      <li>Two</li>
      <li>Three</li>
    </ol>
    <h3>Tertiary header</h3>
    """

    expected_markdown = """
    Hello, world!
    ==========

    Intro

    Some secondary header
    ----------

    A List

    1. One
    2. Two
    3. Three

    ### Tertiary header ###
    """

    assert dbg(Html2MdEx.parse_html(html)) == String.trim(expected_markdown)
  end
end
