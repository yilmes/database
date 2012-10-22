migration 1, :create_users do
  up do
    create_table :users do
      column :id, Integer, :serial => true
      column :userName, String, :length => 255
      column :mail, String, :length => 255
      column :mama, String, :length => 255

    end
  end

  down do
    drop_table :users
  end
end
