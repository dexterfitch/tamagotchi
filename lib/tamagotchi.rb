class Tamagotchi

  define_method(:initialize) do |name|
    @last_feed_time = Time.now()
    @last_play_time = Time.now()
    @last_rest_time = Time.now()

    @name = name
    @food_level = 10
    @activity_level = 10
    @rest_level = 10

  end

  define_method(:name) do
    @name
  end

  define_method(:food_level) do
    @food_level
  end

  define_method(:activity_level) do
    @activity_level
  end

  define_method(:rest_level) do
    @rest_level
  end

  define_method(:time_passes) do
    @food_level -= 1
    @activity_level -= 1
    @rest_level -= 1
  end

  define_method(:time_calc) do
    time_gap_seconds = (Time.now() - @last_feed_time).floor
    time_gap_seconds.times do
      self.time_passes()
    end
  end

  define_method(:feed) do
    self.time_calc()
    if self.is_alive?
      @current_feed_time = Time.now()
      @food_level += 1
    else
      "Sorry jack, #{@name} is dead."
    end
  end

  define_method(:play) do
    self.time_calc()
    if self.is_alive?
      @current_play_time = Time.now()
      @activity_level += 1
    else
      "Sorry jack, #{@name} is dead."
    end
  end

  define_method(:put_to_bed) do
    self.time_calc()
    if self.is_alive?
      @current_rest_time = Time.now()
      @rest_level += 1
    else
      "Sorry jack, #{@name} is dead."
    end
  end

  define_method(:is_alive?) do
    if @food_level > 0 && @activity_level > 0 && @rest_level > 0
      true
    else
      false
    end
  end

end
