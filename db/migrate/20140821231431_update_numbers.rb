class UpdateNumbers < ActiveRecord::Migration
  def change

    rename_column :lessons, :number, :lesson_number
    rename_column :sections, :number, :section_number

  end
end
