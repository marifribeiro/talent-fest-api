defmodule TalentFestApi.Router do
  use Plug.Router

  plug(Plug.Parsers,
    parsers: [:json],
    pass: ["text/*"],
    json_decoder: Jason
  )

  plug(:match)
  plug(:dispatch)
  # plug(CORSPlug, origin: "http://localhost:3000/")

  get "/schools" do
    conn
    |> put_resp_content_type("application/json")
    |> send_resp(
      200,
      "{\n  \"schools\": [\n    {\n      \"id\": \"637b0458-8a48-11eb-8dcd-0242ac130003\",\n      \"name\": \"anhembi morumbi\",\n      \"courses\": [\n        {\n          \"id\": \"6cd4c584-8a48-11eb-8dcd-0242ac130003\",\n          \"name\": \"engenharia civil\"\n        },\n        {\n          \"id\": \"ec0f7ae2-8a48-11eb-8dcd-0242ac130003\",\n          \"name\": \"nutrição\"\n        },\n        {\n          \"id\": \"18450e6a-8a49-11eb-8dcd-0242ac130003\",\n          \"name\": \"administração\"\n        },\n        {\n          \"id\": \"2c16d40a-8a49-11eb-8dcd-0242ac130003\",\n          \"name\": \"rádio, tv e internet\"\n        }\n      ]\n    },\n    {\n      \"id\": \"7229e3ac-8a48-11eb-8dcd-0242ac130003\",\n      \"name\": \"cruzeiro do sul\",\n      \"courses\": [\n        {\n          \"id\": \"4a02820c-8a49-11eb-8dcd-0242ac130003\",\n          \"name\": \"análise e desenvolvimento de sistemas\"\n        },\n        {\n          \"id\": \"a16006dc-8a49-11eb-8dcd-0242ac130003\",\n          \"name\": \"arquitetura e urbanismo\"\n        },\n        {\n          \"id\": \"59e8e139-3a2a-4580-82be-3f6a78084a77\",\n          \"name\": \"biomedicina\"\n        },\n        {\n          \"id\": \"ed7dfc69-1fc7-4513-9812-9a3a4b5826f7\",\n          \"name\": \"ciência da computação\"\n        },\n        {\n          \"id\": \"7807ba94-2743-40b5-9f0c-e30f82a1fd25\",\n          \"name\": \"ciências contábeis\"\n        },\n        {\n          \"id\": \"f5942e3b-9fa5-4b60-97cb-a891656698fe\",\n          \"name\": \"comunicação social - jornalismo\"\n        },\n        {\n          \"id\": \"d7d013cd-02ba-4b71-a6dd-6c7d844d9dff\",\n          \"name\": \"comunicação social - publicidade e propaganda\"\n        },\n        {\n          \"id\": \"0a56aeee-a51d-454f-94e7-a3b634bff52e\",\n          \"name\": \"design de interiores\"\n        }\n      ]\n    },\n    {\n      \"id\": \"06b16350-09ea-488b-9b6d-f238e4021dc2\",\n      \"name\": \"fmu - faculdades metropolitanas unidas\",\n      \"courses\": [\n        {\n          \"id\": \"d7fe00d8-6bf4-42ec-a95a-16ce1ee65000\",\n          \"name\": \"educação física\"\n        },\n        {\n          \"id\": \"eab6879e-0ab4-432c-8261-2beba3757a60\",\n          \"name\": \"engenharia da computação\"\n        },\n        {\n          \"id\": \"341e53f1-cd8d-4e5b-b9ba-cee9f677a691\",\n          \"name\": \"farmácia\"\n        },\n        {\n          \"id\": \"6afc9ab5-288b-4146-bb4b-71ae5b37eeb5\",\n          \"name\": \"odontologia\"\n        }\n      ]\n    },\n    {\n      \"id\": \"ed91f65d-de19-4699-a0fd-3bae98cc59bc\",\n      \"name\": \"mackenzie\",\n      \"courses\": [\n        {\n          \"id\": \"6e1b7d64-0233-47d8-bab7-a3b6c40bc23f\",\n          \"name\": \"marketing\"\n        },\n        {\n          \"id\": \"7bc87246-412a-4f10-a454-c8208d3d4585\",\n          \"name\": \"filosofia\"\n        },\n        {\n          \"id\": \"bb1e2e6f-c227-4c51-9944-7c225d8f6c04\",\n          \"name\": \"design\"\n        }\n      ]\n    }\n  ]\n}"
    )
  end

  match _ do
    send_resp(conn, 404, "Dado não encontrado.")
  end
end
