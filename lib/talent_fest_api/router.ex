defmodule TalentFestApi.Router do
  use Plug.Router

  plug(Plug.Parsers,
    parsers: [:json],
    pass: ["text/*"],
    json_decoder: Jason
  )

  plug(:match)
  plug(:dispatch)

  def mock_data do
    Application.app_dir(:talent_fest_api, "response.json")
    |> File.read!()
  end

  def tap(value) do
    IO.inspect(value)
    value
  end

  get "/schools" do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(200, mock_data())
  end

  match _ do
    send_resp(conn, 404, "Dado não encontrado.")
  end
end
