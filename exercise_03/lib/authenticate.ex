defmodule Exercise03.Authenticate do
  defmodule User do
    defstruct username: ""
  end

  defp authenticate!(
  %{username: "cool_person" = username, password: "sUp3R$3cureP@$$"})
  do
    %User{username: username}
  end

  defp authenticate!(_any), do: nil
end
