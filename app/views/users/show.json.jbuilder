json.extract! @user, :id, :name, :email, :password, :admin, :profile_image, :created_at, :updated_at
json.appointments.extract! @user.appointments, :user_id, :timeslot_id, :date, :start, :duration, :reason_for_visit
