defmodule Exercise03.Router.Test do
  use ExUnit.Case, async: true
  use Plug.Test

  alias Exercise03.Router

  setup do
    conn = conn(:get, "/todos")

    {:ok, %{conn: conn}}
  end

  @tag :skip
  test "has a router/2 function", %{conn: conn} do
    Router.router(conn, %{})
  end

  @tag :skip
  test "router/2 returns a conn", %{conn: conn} do
    assert %Plug.Conn{} = Router.router(conn, %{})
  end

  @tag :skip
  test "has a route/2 function for todos index" do
    Router.route("GET", ["todos"])
  end

  @tag :skip
  test "route/2 returns the controller to be called" do
    {controller, _action, _params} = Router.route("GET", ["todos"])
    assert controller == Exercise03.TodoController
  end

  @tag :skip
  test "route/2 returns the controller action to be called" do
    {_controller, :index, _params} = Router.route("GET", ["todos"])
  end

  @tag :skip
  test "route/2 returns the params for the controller" do
    {_controller, _action, %{}} = Router.route("GET", ["todos"])
  end
end
