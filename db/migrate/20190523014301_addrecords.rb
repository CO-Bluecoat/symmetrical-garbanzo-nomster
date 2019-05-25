class Addrecords < ActiveRecord::Migration[5.2]
  def change
    Place.create :name => "notice", :description => "Some description", :address => "foo bar"
    
  end
end
