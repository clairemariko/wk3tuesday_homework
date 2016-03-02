require('minitest/autorun')
require('minitest/rg')
require_relative('../models/homework')

class TestHomework < Minitest::Test

  def setup
    
    data = {
            address:"3 ARGYLE HOUSE", 
            building:"CODEBASE", 
            postcode: "e13 zqf", 
            phone:'0131558030'
          }
   
    @data = WordFormatter.new(data)
   end

  

  def test_postcode_upcase
    assert_equal("3 ARGYLE HOUSE CODEBASE E13 ZQF 0131558030", @data.postcode_upcase)
  end



end