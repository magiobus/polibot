defmodule Polibot.ChatController do
  use Polibot.Web, :controller

  def fb_callback(conn, %{"object" => "page"}) do
    render conn, "fb_callback.json"
  end
end
