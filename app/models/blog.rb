class Blog
  include Cequel::Record

  key :subdomain, :text
  column :name, :text
  column :description, :text

  has_many :posts
  timestamps
end
