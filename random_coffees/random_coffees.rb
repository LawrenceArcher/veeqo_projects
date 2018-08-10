require "mail"
require "erb"

def coffee_selector
	arr = ["calvin", "archer", "phil", "vera", "ade", "calum", "daniel", "jade", "jade G", "jasmine", "kris", "marc", "matt", "mike", "rhys", "roxy", "steph", "tom", "vasyl"]
	res_arr = []
	while arr.length > 0 do
		if arr.length == 1
			res_arr[-1].push(arr[0])
			arr.pop
			break
		end
		name1 = arr[rand(arr.length)]
		arr.delete(name1)
		name2 = arr[rand(arr.length)]
		arr.delete(name2)
		res_arr.push([name1, name2])
	end
	res_arr
end

res_arr = coffee_selector

res_arr.each do |x|
	if x.length == 3
		puts "#{x[0]} must meet #{x[1]} and #{x[2]} for a beverage at some point this week"
	else
		puts "#{x[0]} must meet #{x[1]} for a beverage at some point this week"
	end
end

template_email = File.read "email.html.erb"
erb_template = ERB.new template_email








mail = Mail.new do
  from    'lawrence@veeqo.com'
  to      'lawrence.archer@gmail.com'
  subject 'This is a test email'
  body    File.read('body.txt')
end

mail.deliver!