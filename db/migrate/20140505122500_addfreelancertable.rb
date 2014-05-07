class Addfreelancertable < ActiveRecord::Migration
  def change
  	create_table 	:freelancers do |t|
  		t.string 	:name
  		t.string 	:email
  		t.text 		:description
  		t.integer 	:phoneno
  		t.decimal	:rate
  		t.boolean 	:joshapproved
  		t.datetime 	:dateofapproval

  		t.timestamps  		
  	end
  end
end
