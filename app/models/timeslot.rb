class Timeslot < ActiveRecord::Base
  has_one :appointment
  
  extend FriendlyId
    friendly_id :user_id, use: :slugged

  def self.confirm(params)
    @timeslot = Timeslot.find_by_id(params[:id])
    @timeslot.try(:authenticate, params[:hour])
  end
end
