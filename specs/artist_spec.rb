require_relative '../models/artist.rb'
require_relative '../models/gallery.rb'
require_relative '../models/painting.rb'

describe Artist do
  context "class method"
    it "initialize returns artist instance" do
      artist_instance = Artist.new("Adam",1000000)
      do expect(artist_instance.name). to eq("Adam")
    end
end
