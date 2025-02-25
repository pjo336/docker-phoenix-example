defmodule HelloWeb.PageControllerTest do
  use HelloWeb.ConnCase

  test "home page loads", %{conn: conn} do
    conn = get(conn, Routes.page_path(conn, :home))
    assert html_response(conn, 200)
  end

  test "up page loads", %{conn: conn} do
    conn = get(conn, Routes.page_path(conn, :up))
    assert html_response(conn, 200)
  end
end
