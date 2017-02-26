# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)\
User.destroy_all
Profile.destroy_all
TodoList.destroy_all
TodoItem.destroy_all

u1 = User.create!(username: "Fiorina", password_digest:"hpceo")
u2 = User.create!(username: "Trump", password_digest:"sad!")
u3 = User.create!(username: "Carson", password_digest:"docbistheoneforme")
u4 = User.create!(username: "Clinton", password_digest:"benghazi")


u1.create_profile!(gender: "female", birth_year: 1954, first_name: "Carly", last_name:"Fiorina")
u2.create_profile!(gender: "male", birth_year: 1946, first_name: "Donald", last_name:"Trump" )
u3.create_profile!(gender: "male", birth_year: 1951, first_name: "Ben", last_name:"Carson" )
u4.create_profile!(gender: "female", birth_year: 1947, first_name: "Hillary", last_name:"Clinton" )

due = Date.today + 12.months

t1 = u1.todo_lists.create!(list_name:"fiorina_list", list_due_date:due)
t2 = u2.todo_lists.create!(list_name:"trump_list", list_due_date:due)
t3 = u3.todo_lists.create!(list_name:"carson_list", list_due_date:due)
t4 = u4.todo_lists.create!(list_name:"clinton_list", list_due_date:due)

 #TodoList.create!(list_name:"fiorina_list", list_due_date:due)

 t1.todo_items.create!(due_date: due, title:"f1", description:"fio1", completed:false)
  t1.todo_items.create!(due_date: due, title:"f2", description:"fio2", completed:false)
 t1.todo_items.create!(due_date: due, title:"f3", description:"fio3", completed:false)
 t1.todo_items.create!(due_date: due, title:"f4", description:"fio4", completed:false)
 t1.todo_items.create!(due_date: due, title:"f5", description:"fio5", completed:false)

 t2.todo_items.create!(due_date: due, title:"t1", description:"trump1", completed:false)
 t2.todo_items.create!(due_date: due, title:"t2", description:"trumo2", completed:false)
 t2.todo_items.create!(due_date: due, title:"t3", description:"trump3", completed:false)
 t2.todo_items.create!(due_date: due, title:"t4", description:"trump4", completed:false)
 t2.todo_items.create!(due_date: due, title:"t5", description:"trump5", completed:false)

 t3.todo_items.create!(due_date: due, title:"b1", description:"car1", completed:false)
  t3.todo_items.create!(due_date: due, title:"b2", description:"car2", completed:false)
 t3.todo_items.create!(due_date: due, title:"b3", description:"car3", completed:false)
 t3.todo_items.create!(due_date: due, title:"b4", description:"car4", completed:false)
 t3.todo_items.create!(due_date: due, title:"b5", description:"car5", completed:false)

 t4.todo_items.create!(due_date: due, title:"c1", description:"clin1", completed:false)
  t4.todo_items.create!(due_date: due, title:"c2", description:"clin2", completed:false)
 t4.todo_items.create!(due_date: due, title:"c3", description:"clin3", completed:false)
 t4.todo_items.create!(due_date: due, title:"c4", description:"clin4", completed:false)
 t4.todo_items.create!(due_date: due, title:"c5", description:"clin5", completed:false)
