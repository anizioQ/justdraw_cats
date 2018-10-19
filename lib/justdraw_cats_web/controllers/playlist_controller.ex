defmodule JustdrawCatsWeb.PlaylistController do
  use JustdrawCatsWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
