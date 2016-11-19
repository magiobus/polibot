defmodule Polibot.PageController do
  use Polibot.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
