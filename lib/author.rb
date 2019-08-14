
class Author
  attr_accessor :name

  @@all = []
    
  def initialize(name)
    @name = name
    @@all << self
  end

  def add_post(post)
    post.author = self
  end

  def add_post_by_title(post)
    post = Post.new(name)
    post.author = self
  end

  def post_count
    Post.all.count
  end

end
