defmodule PPhoenixLiveviewCourseWeb.GameLive.Show do
  use PPhoenixLiveviewCourseWeb, :live_view

  alias PPhoenixLiveviewCourse.Catalog
  alias PPhoenixLiveviewCourse.Rating
  alias PPhoenixLiveviewCourse.Rating.Tomatoes
  alias PPhoenixLiveviewCourseWeb.GameLive.Tomatometer

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    {:noreply,
     socket
     |> assign(:page_title, page_title(socket.assigns.live_action))
     |> assign(:game, Catalog.get_game!(id))}
  end

  @impl true
  def handle_event("on_tomatoe", %{"count" => count, "type" => type}, socket) do
    new_count = String.to_integer(count) + 1
    type = String.to_atom(type)
    current_tomatoes = socket.assigns.tomatoes

    case Rating.update_tomatoes(current_tomatoes, Map.put(%{}, type, new_count)) do
      {:ok, updated_tomatoes} ->
        {:noreply, socket |> assign(:tomatoes, updated_tomatoes)}

      error ->
        IO.inspect(error)
        {:noreply, socket |> put_flash(:error, "Cannot update tomatoes info")}
    end
  end

  defp page_title(:show), do: "Show Game"
  defp page_title(:edit), do: "Edit Game"
end
