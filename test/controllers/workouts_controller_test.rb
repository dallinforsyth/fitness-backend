require "test_helper"

class WorkoutsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/workouts.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Workout.count, data.length
  end

  test "create" do
    assert_difference "Workout.count", 1 do
      post "/workouts.json", params: { img: "lake", body_group: 8, muscle: 600 }
      assert_response 200
    end
  end

  test "show" do
    get "/workouts/#{Workout.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "img", "body_group", "muscle", "created_at", "updated_at"], data.keys
  end

  test "update" do
    photo = Photo.first
    patch "/photos/#{photo.id}.json", params: { name: "Updated name" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
    assert_equal photo.width, data["width"]
    assert_equal photo.height, data["height"]
  end

  test "destroy" do
    assert_difference "Workout.count", -1 do
      delete "/workouts/#{Workout.first.id}.json"
      assert_response 200
    end
  end
end
