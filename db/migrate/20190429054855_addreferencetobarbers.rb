class Addreferencetobarbers < ActiveRecord::Migration[5.2]
  def change
    add_reference :barbers, :user, foreign_key: true
  end
end
