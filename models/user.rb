class User
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :userName, String
  property :mail, String
  property :mama, String
end
