Given("we are on browserstack capability page") do
    @test = Capabilty.new(@driver)  
    @test.getURL
end
    
When("we select {string} and {string} and {string}") do |string, string2, string3|
      @expected = string2
      @test.common
      if (string.include? "win") || (string.include? "mac")
        @test.selectBrowser(string, string2, string3)
      end
      if (string.include? "android") || (string.include? "ios")
        @test.selectMobile(string, string2, string3)
      end
  
end
    
Then("we should be able to verify the device in RHS code") do
      #assert.assert_include(test.capabilityCodeRHS, @expected,"not")
      expect(@test.capabilityCodeRHS).to include(@expected)
end