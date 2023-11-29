defmodule MBTAV3API.FacilitiesTest do
  @moduledoc false
  use ExUnit.Case

  alias JsonApi.Item
  alias MBTAV3API.Facilities

  describe "all" do
    test "gets all facilities" do
      response = %JsonApi{data: [%Item{}]}

      opts = [get_json_fn: fn "/facilities/", [], [] -> response end]

      assert Facilities.all(opts) == response
    end
  end

  # describe "filter_by/2" do
  #   test "hits /facilities" do
  #     bypass = Bypass.open()

  #     url = "http://localhost:#{bypass.port}"

  #     Bypass.expect(bypass, fn conn ->
  #       assert conn.request_path == "/facilities/"
  #       conn = Plug.Conn.fetch_query_params(conn)

  #       assert conn.params["filter"] == %{"stop" => "place-alfcl", "type" => "ELEVATOR"}
  #       Plug.Conn.resp(conn, 200, ~s({"data": []}))
  #     end)

  #     assert %JsonApi{} =
  #              V3Api.Facilities.filter_by(
  #                [
  #                  {"stop", "place-alfcl"},
  #                  {"type", "ELEVATOR"}
  #                ],
  #                base_url: url
  #              )
  #   end
  # end
end
