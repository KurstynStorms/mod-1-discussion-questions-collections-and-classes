# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class
require "pry"

class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def photos
    Photo.new
  end

end

class Photo

  attr_accessor :user

  def initialize
    @photo_comments = []
  end

  def user=(value)
    @user = value
  end

  def comments
    @photo_comments
  end

  def make_comment(comment)
    @photo_comments << Comment.new(comment)
  end

end

class Comment

  attr_accessor :comment

  @@all = []

  def initialize(comment)
    @comment = comment
    @@all << comment
  end

  def self.all
    @@all
  end

end


sandwich_photo = Photo.new

sophie = User.new("Sophie")

sandwich_photo.user = sophie

sandwich_photo.user.name
# => "Sophie"
sophie.photos
# => [#<Photo:0x00007fae2880b370>]


sandwich_photo.comments
# => []

sandwich_photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
sandwich_photo.comments
# => [#<Comment:0x00007fae28043700>]

Comment.all
#=> [#<Comment:0x00007fae28043700>]
