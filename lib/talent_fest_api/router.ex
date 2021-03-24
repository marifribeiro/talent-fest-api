defmodule TalentFestApi.Router do
  use Plug.Router

  plug(Plug.Parsers,
    parsers: [:json],
    pass: ["text/*"],
    json_decoder: Jason
  )

  plug(:match)
  plug(:dispatch)

  defp get_path() do
    if System.get_env("HEROKU_EXEC_URL") do
      "./response.json"
    else
      Path.expand("./", __DIR__)
      |> Path.join("response.json")
    end
  end

  def mock_data do
    get_path()
    |> File.read!()
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
