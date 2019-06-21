defmodule Exercise03.TodoController.Test do
  use ExUnit.Case, async: true
  use Plug.Test

  alias Exercise03.TodoController

  setup do
    conn = conn(:get, "/todos")
    user = %Exercise03.Authenticate.User{username: "authenticated_user"}

    {:ok, %{conn: conn, user: user}}
  end

  test "has an index/2 function", %{conn: conn} do
    TodoController.index(conn, %{})
  end

  test "returns a conn", %{conn: conn} do
    assert %Plug.Conn{} = TodoController.index(conn, %{})
  end

  test "requires a conn as the first argument" do
    assert_raise FunctionClauseError,
                 "no function clause matching in Exercise03.TodoController.index/2",
                 fn ->
                   TodoController.index(:bad_value, %{})
                 end
  end

  test "responds with a 200 status code with a valid user",
       %{conn: conn, user: current_user} do
    resp =
      conn
      |> assign(:current_user, current_user)
      |> TodoController.index(%{})

    assert resp.status == 200
  end

  test "responds with a json representation of the user's todos",
       %{conn: conn, user: current_user} do
    resp =
      conn
      |> assign(:current_user, current_user)
      |> TodoController.index(%{})

    assert Poison.decode!(resp.resp_body) == %{"todos" => [%{"todo" => "Learn Plug"}]}
  end

  test "has an init/1 function" do
    TodoController.init(:arg)
  end

  test "has a call/2 function", %{conn: conn} do
    conn
    |> put_private(:action, :index)
    |> put_private(:params, %{})
    |> TodoController.call(:ok)
  end

  test "call/2 requires an action in the private assigns", %{conn: conn} do
    assert_raise FunctionClauseError,
                 "no function clause matching in Exercise03.TodoController.call/2",
                 fn ->
                   conn
                   |> put_private(:params, %{})

                   TodoController.call(conn, :ok)
                 end
  end

  test "call/2 requires params in the map", %{conn: conn} do
    assert_raise FunctionClauseError,
                 "no function clause matching in Exercise03.TodoController.call/2",
                 fn ->
                   conn
                   |> put_private(:action, :index)
                   |> TodoController.call(:ok)
                 end
  end

  @tag :skip
  test "call/2 calls whatever function is passed in as an action, passing along the conn & params" do
    # No clue how to test it - just do it
  end
end
