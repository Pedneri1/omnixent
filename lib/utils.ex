defmodule Core.Utils do
  use Timex

  def current_date do
    Timex.today
      |> date_to_int
  end

  def last_week_day do
    Timex.today
      |> Timex.shift(days: -7)
      |> date_to_int
  end

  defp date_to_int(date) do
    with d = date.day, m = date.month, y = date.year do
      with {date, _} = Integer.parse "#{y}#{m}#{d}" do
        date
      end 
    end
  end

end