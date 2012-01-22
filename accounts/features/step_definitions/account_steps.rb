Given /^I have an account$/ do
  @account = Account.new # express the regexp above with the code you wish you had
end
Given /^it has a balance of (\d+)$/ do |amount|
	@account.balance = amount  # express the regexp above with the code you wish you had
end
When /^I take out (\d+)$/ do |amount|
  @account.balance = @account.balance.to_i - amount.to_i
end
Then /^my balance should be (\d+)$/ do |amount|
	@account.balance.should eql(amount.to_i)  # express the regexp above with the code you wish you had
end
