class Seed
  def self.begin
    seed = Seed.new
    seed.generate_destinations
  end

  def generate_destinations
    15.times do |i|
      destination = Destination.create!(
        country: Faker::Address.country,
        city: Faker::Address.city,
        description: Faker::TheFreshPrinceOfBelAir.quote,
        best_coffee: Faker::Coffee.blend_name
      )
      puts "Destination #{i}: Country is #{destination.country}"
    end
  end
end

Seed.begin
