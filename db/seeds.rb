require 'faker'

10.times do 
    @user = User.create(name: Faker::Name.name, email: Faker::Internet.unique.email, password: 'password')
    @user.save
end


Joke.create(title:"Mexican Train Killer", setup: "Did you hear about the Mexican train killer?", punchline: "He had loco motives", user_id: 1)
Joke.create(title: "Married Rabbits" , setup: "Where do rabbits go after they get married?", punchline: "On a bunny-moon.", user_id: 2)
Joke.create(title: "Hipster Burn", setup: "How did the hipster burn the roof of his mouth?", punchline: "He ate the pizza before it was cool.", user_id: 3)
Joke.create(title: "Lemon", setup: "What do you give to a lemon in need?", punchline: "Lemonaid.", user_id: 4)
Joke.create(title: "Napoleon's Arymy", setup: "Where does Napoleon keep his armies?", punchline: "In his sleevies.", user_id: 5)
Joke.create(title: "Duck's Lipstick", setup: "What did the duck say when he bought lipstick?", punchline: "Put it on my bill", user_id: 6)
Joke.create(title: "Cookie Cry", setup: "Why did the cookie cry?", punchline: "It was feeling crumby.", user_id: 7)
Joke.create(title: "Blind man falling", setup: "Why did the half blind man fall in the well?", punchline: "Because he couldn't see that well!", user_id: 8)
Joke.create(title: "Blue and light", setup: "What's blue and not very heavy?", punchline: " Light blue.", user_id: 9)
Joke.create(title: "Monkey in mine", setup: "What do you call a monkey in a mine field?", punchline: "A babooooom!", user_id: 10)
Joke.create(title: "DHCP Packet in Bar", setup: "A DHCP packet walks into a bar and asks for a beer.", punchline: "Bartender says, \"here, but I’ll need that back in an hour!\"", user_id: 10)
Joke.create(title: "Understand Recursion", setup: "To understand what recursion is...", punchline: "You must first understand what recursion is", user_id: 9)
Joke.create(title: "Million Monkeys", setup: "If you put a million monkeys at a million keyboards, one of them will eventually write a Java program", punchline: "the rest of them will write Perl", user_id: 8)
Joke.create(title: "Programmers changing bulb", setup: "How many programmers does it take to change a lightbulb?", punchline: "None that's a hardware problem", user_id: 7)
Joke.create(title: "IPv6 waling out", setup: "An IPv6 packet is walking out of the house.", punchline: "He goes nowhere.", user_id: 6)
Joke.create(title: "Race Condition", setup: "Knock-knock.", punchline: "A race condition. Who is there?", user_id: 5)
Joke.create(title: "Understand Binary?", setup: "There are 10 types of people in this world...", punchline: "Those who understand binary and those who don't", user_id: 4)
Joke.create(title: "Foo Bar", setup: "Where do programmers like to hangout?", punchline: "The Foo Bar.", user_id: 3)
Joke.create(title: "Java Devs", setup:  "Why do Java programmers wear glasses?", punchline: "Because they don't C#", user_id: 2)
Joke.create(title: "User Iterfaces", setup: "A user interface is like a joke.", punchline: "If you have to explain it then it is not that good.", user_id: 1)