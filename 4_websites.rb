webnodes = search('node', 'role:web')

webnodes.each do |node|
  puts node
end
