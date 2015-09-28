vowels = ['a','e','i','o','u','y']
hash_v = Hash.new

i = 1
('a'..'z').each do |letter|
	hash_v[letter] = i if vowels.include?(letter)
	i += 1
	end
puts hash_v
