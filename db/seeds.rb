# # Clear existing data (optional - useful for resetting)
# Post.destroy_all
# User.destroy_all

# # --- Users ---
puts "Creating users..."

admin = User.create!(
  name: "Admin User",
  email: "admin@test.com",
  password: "password1",
  password_confirmation: "password1",
  admin: true
)

user1 = User.create!(
  name: "Maria Santos",
  email: "maria@test.com",
  password: "password2",
  password_confirmation: "password2",
  admin: false
)

user2 = User.create!(
  name: "Tony Ramirez",
  email: "tony@test.com",
  password: "password3",
  password_confirmation: "password3",
  admin: false
)

puts "Users created!"


Post.create!(title: "Innovative Synergy Solutions", body: "Our team is dedicated to providing groundbreaking solutions that redefine industry standards. With a focus on efficiency and innovation, we continuously push boundaries to deliver exceptional results.", image: "https://picsum.photos/640/480?random=1", user_id: admin.id)
Post.create!(title: "Revolutionizing Market Strategies", body: "By leveraging data-driven insights and cutting-edge technology, we help businesses navigate complex market landscapes with confidence and precision.", image: "https://picsum.photos/640/480?random=2", user_id: admin.id)
Post.create!(title: "Next-Gen Productivity Tools", body: "Our latest software suite empowers teams to collaborate seamlessly, enhancing productivity while streamlining workflows for maximum efficiency.", image: "https://picsum.photos/640/480?random=3", user_id: admin.id)
Post.create!(title: "Sustainable Growth Tactics", body: "Sustainability is at the core of our growth strategies. We prioritize eco-friendly practices while ensuring long-term success for businesses and communities alike.", image: "https://picsum.photos/640/480?random=4", user_id: admin.id)
Post.create!(title: "AI-Powered Business Insights", body: "Harnessing the power of artificial intelligence, our solutions provide deep insights into market trends, customer behavior, and operational efficiencies.", image: "https://picsum.photos/640/480?random=5", user_id: user1.id)
Post.create!(title: "Breakthroughs in Cloud Computing", body: "Our cloud solutions offer unparalleled scalability, security, and performance, making digital transformation smoother and more accessible than ever.", image: "https://picsum.photos/640/480?random=6", user1.id)
Post.create!(title: "Empowering Remote Workforces", body: "With the shift to remote work, our tools ensure seamless communication, project management, and team collaboration across the globe.", image: "https://picsum.photos/640/480?random=7", user_id: user1.id)
Post.create!(title: "Cybersecurity in the Modern Era", body: "Protecting sensitive data is our top priority. Our advanced security protocols safeguard businesses from cyber threats and ensure compliance with industry standards.", image: "https://picsum.photos/640/480?random=8",  user_id: user1.id)
Post.create!(title: "Blockchain and the Future of Finance", body: "Decentralized finance is reshaping the financial world. Our expertise in blockchain technology helps businesses stay ahead in this rapidly evolving sector.", image: "https://picsum.photos/640/480?random=9",  user_id: user2.id)


puts "successfully created posts!"