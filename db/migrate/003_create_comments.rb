migration 3, :create_comments do
  up do
    create_table :comments do
      column :id, Integer, :serial => true
      column :nick, String, :length => 255
      column :message, String, :length => 255
      column :konuId, Integer
    end
  end

  down do
    drop_table :comments
  end
end
