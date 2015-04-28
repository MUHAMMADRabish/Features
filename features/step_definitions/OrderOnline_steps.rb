When /^I visit the Dominos home page$/ do
  visit('https://order.dominos.com/')
end
Then /^I should see the Dominos home page$/ do
   expect(page).to have_selector(:id, 'homePage')
   sleep 5
 end
When(/^I click the "(.*?)" tab$/) do |tab|
  click_link('Order Online')
  sleep 5
end
Then /^I should see the Dominos Location Search page$/ do
  expect(page).to have_selector(:id, 'locationsSearchPage')
  sleep 5
  end
When /^I click on the delivery tab$/ do
	find('.Delivery').click
	select('Business', :from=>'Address Type:')
	fill_in('Street Address', :with=>'714 emerald hill dr ne')
	fill_in('City', :with=>'Leesburg')
	select('VA',:from=>'State')
	fill_in('Zip Code',:with=>'20176')
  find('.btn--large').click
	sleep 5
	end
Then /^I should be on entrees page$/ do
	expect(page).to have_selector(:id, 'pageContent')
	sleep   5	
    end
When /^I clicked on oven baked pizza$/ do	
    find('.qa-Sand').click
sleep 5
end
Then /^I should be on order pizza$/ do
	expect(page).to have_selector(:id, 'pageContent')
	sleep 5	
	end
When (/^I clicked on philly cheese stick$/) do
     find(:xpath, './/*[@id="categoryPage2"]/section/div/div[5]/a').click
     find('.btn.js-isNew').click
     sleep  5
     end
Then /^I should be on click order page$/ do
    find('.btn.btn--large.btn--checkout.js-buttonCheckout.qa-AllChek>span').click
    sleep 5
end

When /^I click on the cross sign$/ do
    find('.card--overlay__close.js-closeButton').click
    sleep   5
end 
Then /^I should be on reveiw order page$/ do
    expect(page).to have_selector(:id, 'js-checkoutColumns')
    sleep 5
  end
  When /^I click on the add more item option$/ do
  find(:xpath, './/*[@id="backToMenu"]').click
  sleep 5
end
  Then /^I should see entrees page$/ do
    expect(page).to have_selector(:id, 'pageContent')
  sleep   5 
    end
When /^I click on the desert option$/ do
    find('.qa-Dessert.grid').click
    sleep 3
  end
  Then /^I should be on deserts options page$/ do
    expect(page).to have_selector(:id, 'categoryPage2')
  sleep   3
end
When /^I select the product from the option$/ do
find(:xpath, './/*[@id="categoryPage2"]/section/div/div[3]/div/a/img').click
sleep   5
end
Then /^I should see choice page$/ do
  expect(page).to have_selector(:id, 'builderDefaultPage')
   sleep   5
 end
 When /^I click on add to order option$/ do
 find('.btn.js-isNew').click
 sleep   3
end
Then /^I should see the desert selection page$/ do
  expect(page).to have_selector(:id, 'orderSummaryInColumn')
sleep   5 
end
When /^I click on the checkout option$/ do
  find(:xpath, './/*[@id="orderSummaryInColumn"]/div[2]/div[1]/a/span').click
  sleep 5
end
Then /^I should be on order review page$/ do
  expect(page).to have_selector(:id, 'js-pageFull')
  sleep   5
end
When /^I click on the edit option to edit the sandwich$/ do
  find(:xpath,'.//*[@id="js-checkoutColumns"]/div[2]/div/div[2]/div/table[2]/tbody/tr/td[3]/ul/li[3]/a').click
  sleep 5
  end 
  Then /^I should be on serving option page$/ do 
    expect(page).to have_selector(:id, 'builderDefaultPage')
  sleep   5
end
When /^I click on save changes after editing$/ do
   find(:xpath, './/*[@id="js-toppings"]/div[2]/div/div/div[2]/div[1]/div[5]/input').click
   find(:xpath, './/*[@id="builderDefaultPage"]/div/div[2]/form/div[3]/button').click
   sleep   5
 end
 Then /^I should  on order review page$/ do
  expect(page).to have_selector(:id, 'js-checkoutColumns')
 sleep   5
end
When /^I click on checkout option$/ do
find(:xpath,'.btn.btn--large.btn--block.submitButton.qa-OrCheck.js-continueCheckout').click
sleep 5
end 
Then /^I should be on payment page$/ do
expect(page).to have_selector(:id,'prderpaymentpage')
sleep   5
end  
When /^I goto the presto login page$/ do
  visit('http://presto-usatoday-stage.gannettdigital.com/Admin/UserLogin/tabid/262/Default.aspx?returnurl=%2f')
  sleep   5
end
Then /^I should be on login page$/ do
  expect(page).to have_selector(:id, 'ContentLogin')
 sleep   5  
end 
When /^I enter credentials to login$/ do
  fill_in('Username', :with=>'Mrabish')
  fill_in('Password', :with=>'Ahmar4444')
  find('.dropDownContainer').click
  find('#gannettTab').click
  find('#dnn_ctr540_ViewEasyAD_cmdLogin').click
  sleep   5
end
Then /^I should search page$/ do
  expect(page).to have_selector(:id, 'Content')
sleep 5   
end
When /^I go to  presto story$/ do
  find(:xpath, './/*[@id="Form"]/div[3]/div/div[2]/header/div/div/div[2]/ul[1]/li[3]/a').click
  find(:xpath, './/*[@id="Form"]/div[3]/div/div[2]/header/div/div/div[2]/ul[1]/li[3]/ul/li[2]/a').click
  sleep 5 
end 
Then /^the story editor should be opened successfully$/ do
  expect(page).to have_selector(:id, 'dnn_ctr13549_ModuleContent')
sleep 5
end
When /^I fill the short headline field$/ do
  fill_in('Short Headline', :with=>'714 emerald hill dr ne')
sleep 6
end
Then /^I should see the correct text  the fields$/ do
  expect(page).to have_field('txtTitle', with:'714 emerald hill dr ne')
  expect(page).to have_field('txtMobileHeadline', with:'714 emerald hill dr ne')
  expect(page).to have_field('form-page-title', with:'714 emerald hill dr ne')
  sleep 6
end
When /^I click on save draft option$/ do
  find('.btn.btn-primary').click
  sleep 6
end
Then /^the story should be saved as draft$/ do
  expect(page).to have_css('.assetstatus.draft')
sleep 6
end
When /^I enter the text in the body$/ do
  fill_in('Rich Text Editor', :with=>'This is text field')
  sleep 4
end 


 




