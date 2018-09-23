Given("the following articles exists") do |table|
  table.hashes.each do |article|
    Article.create!(article)
  end
end

Given("the following comment exist for {string}") do |article_title, table|
  article = Article.find_by(title: article_title)
    table.hashes.each do |comment_hash|
        article.comments.create(comment_hash)
    end
end

When("I visit the landing page") do
  visit root_path
end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end

When("I click {string} link") do |link|
  click_on link
end

When("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end

When("I click {string} button") do |button|
  click_on button
end

Then("I should be on {string} page") do |article_title|
  title = Article.find_by(title: article_title)
  expect(current_url).to eq article_url(title)
end

Given("I accept popup alert") do
  page.driver.browser.switch_to.alert.accept
end

Given("I perform basic authentication as {string} with {string}") do |user, password|
    
  if page.driver.respond_to?(:basic_auth)
      puts 'Responds to basic_auth'
      page.driver.basic_auth(user, password)
  elsif page.driver.respond_to?(:basic_authorize)
      puts 'Responds to basic_authorize'
      page.driver.basic_authorize(user, password)
  elsif page.driver.respond_to?(:browser) && page.driver.browser.respond_to?(:basic_authorize)
      puts 'Responds to browser_basic_authorize'
      page.driver.browser.basic_authorize(user, password)
  else
      raise "I don't know how to log in!"
  end
end

Given("I got to new article page") do
  visit new_article_path
end


