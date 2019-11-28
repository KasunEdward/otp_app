defmodule OtpApp.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    IO.puts("aaaaa")
    children = [
      # Starts a worker by calling: OtpApp.Worker.start_link(arg)
       {OtpApp.Sup, []}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: OtpApp.Sup]
    Supervisor.start_link(children, opts)
  end
end
