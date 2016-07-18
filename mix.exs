defmodule ConsistencyFailure.Mixfile do
  use Mix.Project

  def project do
    [app:     :consistency_failure,
     version: "0.1.0",
     elixir:  "~> 1.2",

     build_embedded:  Mix.env == :prod,
     start_permanent: Mix.env == :prod,

     deps: []]
  end

  def application, do: []
end
