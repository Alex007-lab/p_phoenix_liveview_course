defmodule PPhoenixLiveviewCourseWeb.StartLive do
  use PPhoenixLiveviewCourseWeb, :live_view

  def render(assigns) do
    ~H"""
    <div>
      <h1>Welcome to the Phoenix LiveView Course!</h1>
      <p>
        This course will teach you how to build dynamic and interactive web applications using Phoenix LiveView.
      </p>
      <p>live_action: {@live_action}</p>
    </div>
    """
  end
end
