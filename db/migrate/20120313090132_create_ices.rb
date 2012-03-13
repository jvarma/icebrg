class CreateIces < ActiveRecord::Migration
  def change
    create_table :ices do |t|
      t.string :topname

      t.timestamps
    end
  end
end
