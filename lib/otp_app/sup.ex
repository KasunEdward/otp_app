defmodule OtpApp.Sup do
  @moduledoc false
  


  use Supervisor

  def start_link(arg) do
    Supervisor.start_link(__MODULE__, arg)
  end

  def init(arg) do
    children = [
      {OtpApp.AdminSvr, name: __MODULE__}
    ]

    opts = [strategy: :one_for_one, name: OtpApp.Sup]
    Supervisor.init(children, opts)
  end
end