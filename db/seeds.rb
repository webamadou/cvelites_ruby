langugages = ActiveSupport::JSON.decode(File.read('db/seeds/languages.json'))
langugages.each do |record|
  Admin::Language.create!(record)
end

countries = ActiveSupport::JSON.decode(File.read('db/seeds/countries.json'))
countries.each do |record|
  Admin::Country.create!(record)
end

#Admin::Domain.delete_all
domains = ActiveSupport::JSON.decode(File.read('db/seeds/domains.json'))
domains.each do |record|
  Admin::Domain.create!(record)
end

12.times do
  domain = Admin::Domain.offset(rand(Admin::Domain.count)).first()
  country = Admin::Country.offset(rand(Admin::Country.count)).first()
  #adding templates
  Admin::Company.create(
      :name => Faker::Company.name,
      :description => Faker::Lorem.paragraph(2),
      :legal_status => Faker::Company.ein,
      :address => Faker::Address.street_address,
      :domain_id => domain.id,
      :status => 1,
      :exist_since => Faker::Date.between(2.days.ago, Date.today),
      :created_at => Time.now.utc,
      :updated_at => Time.now.utc
  )
  Admin::Template.create!(
      :name => Faker::Name.name,
      :domain_id => domain.id,
      :views => 0,
      :status => 1
  )
  Admin::School.create!(
      :name => Faker::University.name,
      :address => Faker::Address.city,
      :country_id => country.id,
      :status => 1,
      :created_at => Time.now.utc,
      :updated_at => Time.now.utc
  )
end

12.times do
  country = Admin::Country.offset(rand(Admin::Country.count)).first()
  user = Admin::User.new(
      :name => Faker::Name.name,
      :firstname => Faker::Name.first_name,
      :email => Faker::Internet.email,
      :password => 'passer',
      :title => Faker::Job.title,
      :birth_date => Faker::Date.between_except(10.year.ago, 50.year.from_now, Date.today),
      :birth_place => Faker::Address.city,
      :address => Faker::Address.city,
      :country_id => country.id,
      :views => Faker::Number.number(3),
      :status => 1,
      :created_at => Time.now.utc,
      :updated_at => Time.now.utc
  )
  user.save!
  #adding schools to user
  school = Admin::School.offset(rand(Admin::School.count)).first
  Admin::Education.create!(
      :school_id => school.id,
      :user_id => user.id,
      :degree => Faker::Lorem.sentence(3, false, 2),
      :graduation_year => Faker::Date.between_except(1.year.ago, 1.year.from_now,Date.today),
      :description => Faker::Lorem.paragraph(4),
      :address => Faker::Address.city
  )
  #adding to user
  hobbies 	= ['sport', 'reading', 'cooking', 'long work']
  hobby 	= Admin::Hobby.create!(
      :name => hobbies.sample,
      :icon => '',
      :status => 1
  )
  #adding company to users
  company = Admin::Company.offset(rand(Admin::Company.count)).first
  Admin::Experience.create!(
      :title => Faker::Job.title,
      :company_id => company.id,
      :user_id => user.id,
      :description => Faker::Lorem.paragraph(3),
      :started_at => Faker::Date.between_except(5.year.ago, 1.year.from_now, Date.today),
      :ended_at => Faker::Date.between_except(3.year.ago, 1.month.from_now, Date.today),
      :still_there => false,
      :status => 1
  )
  #create achievement
  Admin::Achievement.create!(
      user_id: user.id,
      title: Faker::Lorem.sentence(2),
      description: '',
      status: 1
  )
  #create achievement
  Admin::Award.create!(
      user_id: user.id,
      title: Faker::Lorem.sentence(2),
      description: ''
  )
  #create achievement
  skill = Admin::Skill.create!(
      name: Faker::Lorem.sentence(2),
      status: 1
  )
  #join skill and user
  user.skills << skill
  #adding resume
  resume = Admin::Resume.create!(
      :name     => Faker::Name.name,
      :user_id  => user.id,
      :code => SecureRandom.uuid,
      :status   => 1,
      )
  #joinning hobbies users
  user.hobbies << hobby
  #joinning language to resume
  language = Admin::Language.all.sample
  resume.languages << language
  #joinning template resumes
  template = Admin::Template.all.sample
  resume.templates << template
end