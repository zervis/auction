defmodule AuctionWeb.GlobalHelpers do
  use Timex
  def integer_to_currency(amount) do
      dollars_and_cents = amount
      |> Decimal.div(100)
      |> Decimal.round(2)
      "$#{dollars_and_cents}"
  end

  def formatted_datetime(datetime) do
    datetime
    |> Timex.format!("{YYYY}/{0M}/{0D} {h12}:{m}:{s}{am}")
  end
end
