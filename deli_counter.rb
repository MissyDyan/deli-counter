# Write your code here.

def line(katz_deli)
    if katz_deli.empty?
        puts "The line is currently empty."
    else
        customer_list = katz_deli.collect.with_index(1) do |customer, index| 
            "#{index}. #{customer}"
        end.join(" ")
        puts "The line is currently: #{customer_list}"
    end
end

def take_a_number(katz_deli, customer)
    katz_deli.push(customer)
    puts "Welcome, #{customer}. You are number #{katz_deli.length} in line."
end

def now_serving(katz_deli)
    if katz_deli.empty?
        puts "There is nobody waiting to be served!"
    else 
        puts "Currently serving #{katz_deli.shift}." 
    end
end