defmodule ElhexDelivery do
  use Application
  @moduledoc """
  Documentation for `ElhexDelivery`.
  """


  def start(_type, _args) do
    ElhexDelivery.Supervisor.start_link
  end

end
