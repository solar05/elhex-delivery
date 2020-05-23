defmodule ElhexDelivery.Supervisor do
  use Supervisor
  alias ElhexDelivery.PostalCode

  def start_link do
    Supervisor.start_link(__MODULE__, [])
  end

  def init(_) do
    children = [
      supervisor(PostalCode.Supervisor, [])
    ]

    supervise(children, strategy: :one_for_all)
  end

end
