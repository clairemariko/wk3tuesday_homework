class WordFormatter



  def initialize(params)
   
   @address = params[:address]
   @building = params[:building]
   @postcode = params[:postcode]
   @phone = params[:phone]
  end

  def postcode_upcase
    return @address + " " + @building + " " + @postcode.upcase + " " + @phone
  end

end
