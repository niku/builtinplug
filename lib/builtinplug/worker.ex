defmodule Builtinplug.Worker do
  import Plug.Conn

  def init(_options) do
    # initialize options

    " (ノ-_-)ノ~┻┻"
  end

  def call(conn, _opts) do
    require IEx
    IEx.pry

    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Hello world")
  end
end
