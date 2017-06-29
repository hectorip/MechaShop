defmodule MechaShop.PageController do
  use MechaShop.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
