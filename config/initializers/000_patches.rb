Dir[Rails.root.join('lib/patches/**/*.rb')].sort.each do |file|
  require file
end
