defmodule ElixirLS.Mixfile do
  use Mix.Project

  def project do
    [
      apps_path: "apps",
      aliases: aliases(),
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      build_per_environment: false,
      deps: deps(),
      elixir: ">= 1.12.3",
      dialyzer: [
        plt_add_apps: [:dialyxir_vendored, :debugger, :dialyzer, :ex_unit],
        flags: [
          # enable only to verify error handling
          # :unmatched_returns,
          :error_handling,
          :unknown,
          :underspecs,
          :extra_return,
          :missing_return
        ]
      ]
    ]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options.
  #
  # Dependencies listed here are available only for this project
  # and cannot be accessed from applications inside the apps folder
  defp deps do
    []
  end

  defp aliases do
    [
      test: "cmd mix test"
    ]
  end
end
