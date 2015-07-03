defmodule Builtinplug.Worker do
  require Logger
  import Plug.Conn

  def init(options) do
    # initialize options
    Logger.info("init options: #{inspect options}")

    options
  end

  def call(conn, _opts) do
    Logger.debug("call conn.path_info: #{inspect conn.path_info}, conn.query_string: #{inspect conn.query_string}")

    conn
    |> put_resp_content_type("text/plain")
    |> send_resp(200, "Hello world")
  end
end
