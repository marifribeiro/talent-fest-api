defmodule TalentFestApi.MixProject do
  use Mix.Project

  def project do
    [
      app: :talent_fest_api,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {TalentFestApi.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:plug_cowboy, "~> 2.0"},
      {:cowboy, "< 2.8.0", override: true},
      {:jason, "~> 1.1"},
      {:cors_plug, "~> 2.0"}
    ]
  end
end
