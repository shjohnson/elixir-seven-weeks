defmodule Elocator.Repo do
  use Ecto.Repo,
  otp_app: :elocator
end

defmodule Elocator do
  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      supervisor(Elocator.Repo, []),
    ]

    opts = [strategy: :one_for_one, name: Elocator.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
