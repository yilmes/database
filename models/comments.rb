class Comments
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :nick, String
  property :message, String
  property :konuId, Integer
end
