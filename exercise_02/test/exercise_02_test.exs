defmodule Exercise02Test do
  use ExUnit.Case, async: true
  use Plug.Test

  test "has a do_something/2 function" do
    :get
    |> conn("/some_endpoint")
    |> Exercise02.do_something(%{})
  end

  #test "returns a conn" do
  #  %Plug.Conn{} =
  #    :get
  #    |> conn("/some_endpoint")
  #    |> Exercise02.do_something(%{})
  #end

  #test "requires a conn as the first arg" do
  #  assert_raise FunctionClauseError,
  #  "no function clause matching in Exercise02.do_something/2",
  #  fn ->
  #    Exercise02.do_something(:bad_value, %{})
  #  end
  #end

  #test "returns a 404 status" do
  #  resp =
  #    :get
  #    |> conn("/some_endpoint")
  #    |> Exercise02.do_something(%{})

  #  assert resp.status == 404
  #end

  #test "returns 'It's just another plug!' in the body" do
  #  resp =
  #    :get
  #    |> conn("/some_endpoint")
  #    |> Exercise02.do_something(%{})

  #  assert resp.resp_body == "It's just another plug!"
  #end
end
