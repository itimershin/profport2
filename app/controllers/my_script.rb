def generate_password(len=6)
symbols = [ 'a'..'z', 'A'..'Z'].collect { |x| x.to_a }.flatten
  (1..len).collect { symbols.sample }.shuffle.join
end
p generate_password(7)


=begin
person = { age: 15, name: 'Misha'}
person.each { |k, v| p "#{k}" => "#{v}"}
info = { age: 20, wage: 25000 }
person.update(info)
person.each { |k, v| p "#{k}" => "#{v}"}
hash = Hash.new(0)
p hash[:id]

arr = ["sfsdfsdf", "wqewer", "wqeqwe" ,"qweasad", "qweasad", "qweasad"]
fre=end
