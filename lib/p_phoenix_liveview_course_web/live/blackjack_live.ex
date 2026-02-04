defmodule PPhoenixLiveviewCourseWeb.BlackjackLive do
  use PPhoenixLiveviewCourseWeb, :live_view

  @cards [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10]

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket |> init_deck() |> first_deal()}
  end

  @impl true
  def render(assigns) do
    ~H"""
    <section>
      <strong>Blackjack</strong>
      <div>
        Deck: {inspect(@cards)}
      </div>
      <div>
        Player: {inspect(@player)}
      </div>
      <div>
        CPU: {inspect(@cpu)}
      </div>
    </section>
    """
  end

  defp init_deck(socket) do
    socket |> assign(cards: @cards, player: [], cpu: [])
  end

  defp first_deal(socket) do
    [card1, card2, card3, card4] = Enum.take_random(@cards, 4)
    socket |> assign(player: [card1, card2], cpu: [card3, card4])
  end
end
