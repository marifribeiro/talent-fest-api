defmodule TalentFestApi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      Plug.Cowboy.child_spec(
        scheme: :http,
        plug: TalentFestApi.Router,
        http: [port: {:system, "PORT"}],
        url: [scheme: "https", host: "mysterious-meadow-6277.herokuapp.com", port: 443],
        force_ssl: [rewrite_on: [:x_forwarded_proto]]
      )
    ]

    opts = [strategy: :one_for_one, name: TalentFestApi.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
