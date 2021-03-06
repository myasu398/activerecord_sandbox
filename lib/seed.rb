module Seed
  def self.load
    bob = User.create!(name: "Bob", email: "bob@sample.com", image: Image.new(name: "avatar"))
    kana = User.create!(name: "Kana", email: "kana@sample.com")
    bob_post = Post.create!(title: 'diary', content: 'I went to the park yesterday.', user: bob)
    Comment.create!(content: 'Nice!', user: kana, post: bob_post)
    Post.create!(title: 'My new gear', content: 'I bought new Phone!!', user: kana, images: [Image.new(name: "phone")])
  end
end