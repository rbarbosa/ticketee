Given /^"([^"]*)" has created a ticket for this project:$/ do |email, table|
  # table is a Cucumber::Ast::Table
  #pending # express the regexp above with the code you wish you had
  table.hashes.each do |attributes|
    attributes = attributes.merge!(:user  => User.find_by_email!(email))
    @project.tickets.create!(attributes)
  end
end