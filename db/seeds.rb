# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Faker::UniqueGenerator.clear
puts '💻✌ Seeding..'

Country.destroy_all
City.destroy_all
Department.destroy_all
Employee.destroy_all
Project.destroy_all
ProjectEmployee.destroy_all


country1=Country.create!(name: "USA");
country2=Country.create!(name: "Austrailia");
country3=Country.create!(name: "India");
country4=Country.create!(name: "Sri Lanka");
country5=Country.create!(name: "Japan");

cntry=[country1,country2,country3,country4,country5]


c1=City.create!(name: Faker::Name.first_name, branch_name: Faker::Company.name, country: cntry.sample)
c2=City.create!(name: Faker::Name.first_name, branch_name: Faker::Company.name, country: cntry.sample)
c3=City.create!(name: Faker::Name.first_name, branch_name: Faker::Company.name, country: cntry.sample)
c4=City.create!(name: Faker::Name.first_name, branch_name: Faker::Company.name, country: cntry.sample)
c5=City.create!(name: Faker::Name.first_name, branch_name: Faker::Company.name, country: cntry.sample)
c6=City.create!(name: Faker::Name.first_name, branch_name: Faker::Company.name, country: cntry.sample)
c7=City.create!(name: Faker::Name.first_name, branch_name: Faker::Company.name, country: cntry.sample)
c8=City.create!(name: Faker::Name.first_name, branch_name: Faker::Company.name, country: cntry.sample)
c9=City.create!(name: Faker::Name.first_name, branch_name: Faker::Company.name, country: cntry.sample)
c10=City.create!(name: Faker::Name.first_name, branch_name: Faker::Company.name, country: cntry.sample)
c11=City.create!(name: Faker::Name.first_name, branch_name: Faker::Company.name, country: cntry.sample)


department1=Department.create!(name: "BUILDING CONSTRUCTION", dept_manager_name: Faker::Name.name);
department2=Department.create!(name: "ROADS & BRIDGES", dept_manager_name: Faker::Name.name);
department3=Department.create!(name: "PROPERTY DEVELOPMENT", dept_manager_name: Faker::Name.name);
department4=Department.create!(name: "PRECASTING", dept_manager_name: Faker::Name.name);

p1=Project.create!(name:"Havelock City" ,client_name: Faker::Company.name,sector: "Highrise",cost: 200,start_date: 01052011, end_date: 01052013)
p2=Project.create!(name:"HND" ,client_name: Faker::Company.name,sector: "Highrise",cost: 150,start_date: 03052012, end_date: 06052014)
p3=Project.create!(name:"ITUM" ,client_name: Faker::Company.name,sector: "Highrise",cost: 100,start_date: 01052011, end_date: 01052013)
p4=Project.create!(name:"central Wind Power" ,client_name: Faker::Company.name,sector: "Electrical",cost: 20,start_date: 12062011, end_date: 30062013)
p5=Project.create!(name:"Elec.Gen" ,client_name: Faker::Company.name,sector: "Electrical",cost: 10,start_date: 22082017, end_date: 22082018)
p6=Project.create!(name:"Maillennium City" ,client_name: Faker::Company.name,sector: "Housing",cost: 10,start_date: 01112012, end_date: 06052013)
p7=Project.create!(name:"Central highway" ,client_name: Faker::Company.name,sector: "Road",cost: 100,start_date: 01052016, end_date: 22082019)
p8=Project.create!(name:"Southern highway" ,client_name: Faker::Company.name,sector: "Road",cost: 90,start_date: 06052011, end_date: 20082013)
p9=Project.create!(name:"Wind power" ,client_name: Faker::Company.name,sector: "Electrical",cost: 12,start_date: 02052014, end_date: 01052015)
p10=Project.create!(name:"Havelock City phase II" ,client_name: Faker::Company.name,sector: "Highrise",cost: 210,start_date: 04052017, end_date: 01052021)

cities=[c1.id,c2.id,c3.id,c4.id,c5.id,c6.id,c7.id,c8.id,c9.id,c10.id,c11.id]
roles=["manager", "civil engineer", "Admin officer", "elecrical enginner", "supervisor","HR officer", "supervisor", "technical officer"]
all_projects=[p1.id,p2.id,p3.id,p4.id,p5.id,p6.id,p7.id,p8.id,p9.id,p10.id]
dpt=[department1.id, department2.id,department3.id,department4.id]
sections=["Audit", "Finance", "Security", "Transport", "HR", "Purchasing"]

e1=Employee.create!(name: Faker::Name.name, role: roles.sample, city_id: cities.sample, department_id:dpt.sample, section: sections.sample)
e2=Employee.create!(name: Faker::Name.name, role: roles.sample, city_id: cities.sample, department_id:dpt.sample, section: sections.sample)
e3=Employee.create!(name: Faker::Name.name,role: roles.sample,  city_id: cities.sample, department_id:dpt.sample, section: sections.sample)
e4=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e5=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e6=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e7=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e8=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e9=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e10=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e11=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e12=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e13=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e14=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e15=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e16=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e17=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e18=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e19=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e20=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e21=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e22=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e23=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e24=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e25=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e26=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e27=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e28=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e29=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e30=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e31=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e32=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e33=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e34=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)
e35=Employee.create!(name: Faker::Name.name,role: roles.sample, city_id: cities.sample,department_id:dpt.sample, section: sections.sample)

emp=[e1.id,e2.id,e3.id,e4.id,e5.id,e6.id,e7.id,e8.id,e9.id,e10.id,e11.id,e12.id,e13.id,e14.id,e15.id,e16.id,e17.id,
e18.id,e19.id,e20.id,e21.id,e22.id,e23.id,e24.id,e25.id,e26.id,e27.id,e28.id,e29.id,e30.id,e31.id,e32.id,e33.id,e34.id,e35.id]

100.times do
    ProjectEmployee.create!(employee_id: emp.sample, project_id: all_projects.sample )
end

puts '✌ Seeding completed..👍'