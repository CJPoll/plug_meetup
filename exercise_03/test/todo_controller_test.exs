defmodule Exercise03.TodoController.Test do
  use ExUnit.Case, async: true
  use Plug.Test

  alias Exercise03.TodoController

  #setup do
  #  conn = conn(:get, "/todos")
  #  user = %Exercise03.Authenticate.User{username: "authenticated_user"}

  #  {:ok, %{conn: conn, user: user}}
  #end

  #describe "index" do
  #  test "has an index/2 function", %{conn: conn} do
  #    TodoController.index(conn, %{})
  #  end

  #  test "returns a conn", %{conn: conn} do
  #    assert %Plug.Conn{} = TodoController.index(conn, %{})
  #  end

  #  test "requires a conn as the first argument" do
  #    assert_raise FunctionClauseError,
  #    "no function clause matching in Exercise03.TodoController.index/2",
  #    fn ->
  #      TodoController.index(:bad_value, %{})
  #    end
  #  end

  #    resp =
  #      conn
  #      |> TodoController.index(%{})

  #    assert resp.status == 200
  #  end

  #    resp =
  #      conn
  #      |> TodoController.index(%{})

  #    assert Poison.decode!(resp.resp_body) == %{"todos" => [%{"todo" => "Learn Plug"}]}
  #  end

  #  test "has a run/2 function", %{conn: conn} do
  #    TodoController.run(conn, %{action: :index, params: %{}})
  #  end

  #  test "run/2 requires an action in the params", %{conn: conn} do
  #    assert_raise FunctionClauseError,
  #    "no function clause matching in Exercise03.TodoController.run/2",
  #    fn ->
  #      TodoController.run(conn, %{params: %{}})
  #    end
  #  end

  #  test "run/2 requires params in the map", %{conn: conn} do
  #    assert_raise FunctionClauseError,
  #    "no function clause matching in Exercise03.TodoController.run/2",
  #    fn ->
  #      TodoController.run(conn, %{action: :index})
  #    end
  #  end

  #  test "run/2 calls whatever function is passed in as an action, passing along the conn & params" do
  #    # No clue how to test it - just do it
  #  end
  #end
end
