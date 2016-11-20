defmodule Polibot.ChatController do
  use Polibot.Web, :controller
  alias Polibot.CandidateServices
  require IEx

  @messages_url "https://graph.facebook.com/v2.6/me/messages?access_token=" <> System.gen_env("POLIBOT_FB_TOKEN")

  def chat(conn, %{"entry" => [%{"messaging" => [%{"postback" => %{"payload" => "Let's run for presidency!"},
                                                   "recipient" => %{"id" => page_id},
                                                   "sender" => %{"id" => user_id}}|_]}|_]}) do
    candidate = CandidateServices.create!
    IEx.pry
    render conn, "candidate.json", candidate: candidate
  end

  def fb_callback(conn, %{"object" => "page"}) do
    render conn, "fb_callback.json"
  end
end
