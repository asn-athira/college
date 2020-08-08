class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
    	t.string :firstname
    	t.string :lastname
  	   	t.integer :age
    	t.string :gender
        t.text   :address    	
        t.integer :phone    	
        t.string :email
       	t.timestamps
    end
  end
end
