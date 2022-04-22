class ZodiacController < ApplicationController
  def horoscope
    all_zodiacs = Zodiac.list
    @sign = params["sign"]
    #@horoscope = Zodiac.list.fetch(@sign.to_sym).fetch(:horoscope)
    @horoscope = Zodiac.list[@sign.to_sym][:horoscope]

    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end
    
    render({ :template => "zodiac_templates/zodiac.html.erb" })
  end
end