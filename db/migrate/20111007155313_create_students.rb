class CreateStudents < ActiveRecord::Migration
  def self.up
    create_table :students do |t|
      t.string :name, :length => 200
      t.string :twitter, :length => 100
      t.string :level, :length => 50
      t.string :email, :length => 250
      t.text :wishes
      t.text :suggestions

      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
