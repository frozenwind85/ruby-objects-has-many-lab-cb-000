class Author
  attr_accessor :posts, :name
  @@post_count = 0

  def initialize(name)
    @posts = []
    @name = name

  end

  def add_post_by_title(title)
    post = Post.new(title)
    @posts << post
    post.author = self
    self.class.post_count = self.class.post_count + 1
  end

  def add_post(post)
    @posts << post
    post.author = self
    self.class.post_count = self.class.post_count + 1

  end

  def self.post_count
    @@post_count
  end

  def self.post_count=(count)
    @@post_count = count
  end


end
