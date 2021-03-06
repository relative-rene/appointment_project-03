class CreateUsers < ActiveRecord::Migration
    def change
        create_table :users do |t|
            t.string :name
            t.string :email
            t.string :password_digest
            t.string :phone_number
            t.string :profile_image

            t.timestamps null: false
        end
    end
end
