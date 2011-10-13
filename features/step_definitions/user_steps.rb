Given /^there are the following users:$/ do |table|
  # table is a Cucumber::Ast::Table
  #pending # express the regexp above with the code you wish you had
  table.hashes.each do |attributes|
    unconfirmed = attributes.delete("unconfirmed") == "true"
    @user = User.create!(attributes)
    @user.confirm! unless unconfirmed
  end
end