require "test_helper"

class WorkoutsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/photos.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Photo.count, data.length
  end

  test "create" do
    assert_difference "Photo.count", 1 do
      post "/photos.json", params: { name: "lake", width: 800, height: 600 }
      assert_response 200
    end
  end

  test "show" do
    get "/photos/#{Photo.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "width", "height", "created_at", "updated_at"], data.keys
  end
end
