require "mail"

def coffee_selector
	arr = ["@archer", "@ade", "@calum", "@calvin", "@daniel", "@jade", "@jade G", "@jasmine", "@kris", "@marc", "@matt", "@mike", "@phil", "@rhys", "@roxy", "@steph", "@tom", "@vasyl", "@vera"]
	res_arr = []
	res_str = "This weeks' random coffees:\n"
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

	res_arr.each do |x|
		if x.length == 3
			res_str << "#{x[0]} - #{x[1]} and #{x[2]}\n"
		else
			res_str << "#{x[0]} - #{x[1]}\n"
		end
	end
	puts res_str
end

coffee_selector