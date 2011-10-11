Given /^that project has a ticket:$/ do |table|
  # table is a Cucumber::Ast::Table
  #pending # express the regexp above with the code you wish you had
  table.hashes.each do |attributes|
    @project.tickets.create!(attributes)
  end
end