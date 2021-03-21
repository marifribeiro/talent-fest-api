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
        options: [port: 4000]
      )
    ]

    opts = [strategy: :one_for_one, name: TalentFestApi.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
