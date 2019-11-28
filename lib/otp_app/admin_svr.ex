defmodule OtpApp.AdminSvr do
  @moduledoc false
  


  use GenServer

  def start_link(_opts) do
    GenServer.start_link(__MODULE__,[],name: __MODULE__)
  end

  def init(_opts) do
    IO.puts("Starting gen svr")
    {:ok, %{}}
  end

  def hello() do
    IO.puts("inside fun")
    GenServer.call(__MODULE__, {:hello})
  end

  def handle_call(_msg, _from, state) do
    {:reply, :ok, state}
  end

  def handle_cast(_msg, state) do
    {:noreply, state}
  end
end