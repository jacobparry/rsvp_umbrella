defmodule RsvpWeb.EventViewTest do
  use RsvpWeb.ConnCase, async: true

  @tag current: true
  test "Should convert a date to M/D/YYYY format" do
    date = Ecto.DateTime.from_erl({{2016,12,03}, {00, 00, 00}})
    formatted = RsvpWeb.EventView.format_date(date)

    assert formatted == "12/3/2016"
  end
end
