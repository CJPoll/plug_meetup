defmodule Exercise03.Authenticate.Test do
  use ExUnit.Case, async: true
  use Plug.Test

  alias Exercise03.Authenticate

  setup do
    conn = conn(:get, "/todos")
    valid_credentials =
      %{username: "cool_person", password: "sUp3R$3cureP@$$"}
    invalid_credentials =
      %{username: "L337HaX0rZ", password: "1=1"}

    context =
      %{conn: conn,
        valid_credentials: valid_credentials,
        invalid_credentials: invalid_credentials}

    {:ok, context}
  end

  test "returns a conn", %{conn: conn, valid_credentials: credentials} do
    actual =
      conn
      |> put_private(:credentials, credentials)
      |> Authenticate.call(%{})

    assert %Plug.Conn{} = actual
  end

  #test "requires a conn as the first param" do
  #  assert_raise FunctionClauseError,
  #  "no function clause matching in Exercise03.Authenticate.call/2",
  #  fn ->
  #    Authenticate.call(:bad_value, %{})
  #  end
  #end

  #test "assigns the current user if credentials are valid",
  #%{conn: conn, valid_credentials: credentials}
  #do
  #  expected = %Authenticate.User{username: credentials.username}
  #  resp =
  #    conn
  #    |> put_private(:credentials, credentials)
  #    |> Authenticate.call(%{})

  #  assert resp.assigns.current_user == expected
  #end

  #test "returns a 401 if credentials are invalid",
  #%{conn: conn, invalid_credentials: credentials}
  #do
  #  resp =
  #    conn
  #    |> put_private(:credentials, credentials)
  #    |> Authenticate.call(%{})

  #  assert resp.status == 401
  #end

  #test "halts if credentials are invalid",
  #%{conn: conn, invalid_credentials: credentials}
  #do
  #  assert conn
  #         |> put_private(:credentials, credentials)
  #         |> Authenticate.call(%{})
  #         |> Map.get(:halted)
  #  assert conn
  #         |> Authenticate.call(%{"login" => credentials})
  #end
end
