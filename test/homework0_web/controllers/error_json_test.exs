defmodule Homework0Web.ErrorJSONTest do
  use Homework0Web.ConnCase, async: true

  test "renders 404" do
    assert Homework0Web.ErrorJSON.render("404.json", %{}) == %{errors: %{detail: "Not Found"}}
  end

  test "renders 500" do
    assert Homework0Web.ErrorJSON.render("500.json", %{}) ==
             %{errors: %{detail: "Internal Server Error"}}
  end
end
