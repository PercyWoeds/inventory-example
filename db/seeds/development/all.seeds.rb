user = FactoryGirl.create(:user, :confirmed)
location = FactoryGirl.create(:location)
units = FactoryGirl.create_list(:unit, 5, user: user, location: location)



