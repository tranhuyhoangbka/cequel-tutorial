class Post
  include Cequel::Record

  belongs_to :blog
  key :id, :timeuuid, auto: true, order: :desc
  column :title, :text
  column :body, :text
  column :author_id, :text, index: true
  set :categories, :text
  timestamps

  validates :body, presence: true
  before_save :check_title

  private
  def check_title
    self.title.upcase!
  end
end
