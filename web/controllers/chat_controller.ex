defmodule Polibot.ChatController do
  use Polibot.Web, :controller

  @messages_url "https://graph.facebook.com/v2.6/me/messages?access_token=" <> System.gen_env("POLIBOT_FB_TOKEN")

  def fb_callback(conn, %{"object" => "page"}) do
    render conn, "fb_callback.json"
  end
end
