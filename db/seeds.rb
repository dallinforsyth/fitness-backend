arm = BodyGroup.create!(body_part: "Arms")
leg = BodyGroup.create!(body_part: "Legs")
core = BodyGroup.create!(body_part: "Core")
chest = BodyGroup.create!(body_part: "Chest")
shoulder = BodyGroup.create!(body_part: "Shoulder")
back = BodyGroup.create!(body_part: "Back")

Workout.create!(img: "https://www.mensjournal.com/.image/c_limit%2Ccs_srgb%2Cq_auto:good%2Cw_620/MTk2MTM3MzIxNzgzMDQzNTg5/2-dip.webp", muscle: "triceps", body_group: arm.id)
