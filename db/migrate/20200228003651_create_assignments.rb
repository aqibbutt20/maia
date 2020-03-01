class CreateAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :assignments do |t|
      t.references :user
      t.references :client
      t.timestamps
    end
  end
end
