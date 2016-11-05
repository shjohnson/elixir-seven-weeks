defmodule Example.Mixfile do
  use Mix.Project

  def project do
    [app: :example,
     version: "0.1.0",
     elixir: "~> 1.3",
     escript: [main_module: Example],
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  defp deps do
    []
  end
end
