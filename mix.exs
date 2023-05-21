defmodule Html2mdEx.MixProject do
  use Mix.Project

  def project do
    [
      app: :html2md_ex,
      description: "Convert HTML to Markdown",
      source_url: "https://github.com/brendon9x/html2md_ex",
      homepage_url: "https://github.com/brendon9x/html2md_ex",
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      docs: [
        main: "readme",
        extras: ["README.md"]
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:rustler, "~> 0.25.0"},
      {:ex_doc, "~> 0.18", only: :dev}
    ]
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "priv", "native"],
      maintainers: ["Your Name"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/username/repo"}
    ]
  end


end
