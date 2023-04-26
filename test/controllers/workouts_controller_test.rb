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
    patch "/photos/#{photo.id}.json", params: { img: "Updated img" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated img", data["img"]
    assert_equal photo.body_group, data["body_group"]
    assert_equal photo.muscle, data["muscle"]
  end

  test "destroy" do
    assert_difference "Workout.count", -1 do
      delete "/workouts/#{Workout.first.id}.json"
      assert_response 200
    end
  end
end
