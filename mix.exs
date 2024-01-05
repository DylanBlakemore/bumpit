defmodule Bumpit.MixProject do
  use Mix.Project

  def project do
    [
      app: :bumpit,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      package: package(),
      description: description()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.31", only: :dev, runtime: false}
    ]
  end

  defp description() do
    "Mix task for semantic version bumping."
  end

  defp package() do
    [
      name: "bumpit",
      files: ~w(lib .formatter.exs mix.exs README* LICENSE*),
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/DylanBlakemore/bumpit"}
    ]
  end
end
