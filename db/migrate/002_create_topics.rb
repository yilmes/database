migration 2, :create_topics do
  up do
    create_table :topics do
      column :id, Integer, :serial => true
      column :subject, String, :length => 255
      column :message, String, :length => 255
    end
  end

  down do
    drop_table :topics
  end
end
