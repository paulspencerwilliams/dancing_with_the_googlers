Given(/^the scores are:$/) do |table|
end

Then(/^the input file will be:$/) do |input|
  steps %{
    Given a file named "input.txt" with:
      """
#{input}
     """
  }
end

When(/^I ask for analysis$/) do
  steps %{
    When I run `analyser input.txt`
  }
end


Then(/^the results should be:$/) do |output|
  steps %{
    Then it should pass with:
      """
#{output}
      """
  }
end
