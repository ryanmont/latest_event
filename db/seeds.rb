User.create!(email: "test@test.com",
						 password: "asdfasdf")

10.times do |i|
	Event.create!(title: "Dance party #{i}", 
								summary: "wild dance party at ryan montgomery's house",
								location: "Ryan's house",
								event_date: "Today or the 28th of April",
								approved_ids: "only the best and the brightest", 
								max_attendees: 20,
								user_id: User.last.id)
end