defmodule Exercise01Test do
  use ExUnit.Case, async: true
  use Plug.Test

  test "has an init/1 function" do
    Exercise01.init([])
  end

  #test "has a call/2 function" do
  #  :get
  #  |> conn("/some_endpoint")
  #  |> Exercise01.call([])
  #end

  #test "call/2 requires a conn" do
  #  assert_raise FunctionClauseError,
  #  "no function clause matching in Exercise01.call/2",
  #  fn ->
  #    Exercise01.call(:bad_value, [])
  #  end
  #end

  #test "call/2 returns a Plug.Conn" do
  #  %Plug.Conn{} =
  #    :get
  #    |> conn("/some_endpoint")
  #    |> Exercise01.call([])
  #end

  #test "call/2 sends a 200 status code" do
  #  resp =
  #    :get
  #    |> conn("/some_endpoint")
  #    |> Exercise01.call([])

  #  assert resp.status == 200
  #end

  #test "call/2 returns 'hello world' in the body" do
  #  resp =
  #    :get
  #    |> conn("/some_endpoint")
  #    |> Exercise01.call([])

  #  assert resp.resp_body == "hello world"
  #end
end
