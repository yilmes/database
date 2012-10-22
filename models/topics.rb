class Topics
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :subject, String
  property :message, String
end
