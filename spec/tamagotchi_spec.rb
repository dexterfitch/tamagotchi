require('rspec')
require('tamagotchi')

describe("Tamagotchi") do

  describe('#initialize') do
    it('sets the name and other properties') do
      test_animal = Tamagotchi.new("Spike")
      expect(test_animal.name()).to(eq("Spike"))
      expect(test_animal.food_level()).to(eq(10))
      expect(test_animal.activity_level()).to(eq(10))
      expect(test_animal.rest_level()).to(eq(10))
    end
  end

  describe("#name") do
    it("reads out the name of the tamagotchi") do
      test_animal = Tamagotchi.new("Spike")
      expect(test_animal.name()).to(eq("Spike"))
    end
  end

  describe('#time_passes') do
    it('decreases the amount of food, the activity level, and the rest level by 1') do
      test_animal = Tamagotchi.new("Spike")
      test_animal.time_passes()
      expect(test_animal.food_level()).to(eq(9))
      expect(test_animal.activity_level()).to(eq(9))
      expect(test_animal.rest_level()).to(eq(9))
    end

  end

  describe('#feed') do
    it('increases the food level by 1') do
      test_animal = Tamagotchi.new("Spike")
      test_animal.feed()
      expect(test_animal.food_level()).to(eq(11))
    end
  end

  describe('#play') do
    it('increases the activity level by 1') do
      test_animal = Tamagotchi.new("Spike")
      test_animal.play()
      expect(test_animal.activity_level()).to(eq(11))
    end
  end

  describe('#put_to_bed') do
    it('increases the rest level by 1') do
      test_animal = Tamagotchi.new("Spike")
      test_animal.put_to_bed()
      expect(test_animal.rest_level()).to(eq(11))
    end
  end

  describe('#is_alive?') do
    it('returns true if all levels are above 0') do
      test_animal = Tamagotchi.new("Spike")
      expect(test_animal.is_alive?()).to(eq(true))
    end

    it('return false if any levels drop to zero') do
      test_animal = Tamagotchi.new("Spike")
      10.times do test_animal.time_passes() end
      expect(test_animal.is_alive?()).to(eq(false))
    end
  end

end
