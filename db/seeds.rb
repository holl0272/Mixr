User.delete_all
Cocktail.delete_all
Ingredient.delete_all

u1 = User.create(:username => 'Joe', :password => 'a', :password_confirmation => 'a')
u2 = User.create(:username => 'Eric', :password => 'a', :password_confirmation => 'a')

c1 = Cocktail.create(:name => 'Margarita', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQkTNNw6emn52KeNuCpuXh0NzZUK0JCiXMOs2STAsRENHa4AJnV', :description => '1 1/2 oz tequila, 1/2 oz triple sec')
c2 = Cocktail.create(:name => 'White Russian', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcTEANJ5MoULXVvZaLO2uZHiTuayJYvUtwwzzC-oLqWaFD2IRLHV', :description => '1 1/2 oz vodka, 3/4 oz Kahlua coffee liqueur, 3/4 oz cream')
c3 = Cocktail.create(:name => 'Highball', :image => 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRzTE7snEOFrk-Xs5UMmyjUFARp9RuODTTPLURj56i28fLFYOvwJQ', :description => '2 oz whiskey, Top with ginger ale')
c4 = Cocktail.create(:name => 'Gin and Tonic', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQMIho8nUMqz1y3qp-pBtfCz4l49IeOcRat8NEVwiuMvh4H0x5swA', :description => '2 oz gin, 5 oz tonic water, Lime wedge for garnish')
c5 = Cocktail.create(:name => 'Rum and Coke', :image => 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTNSSlwsbmiJSaSHC60mXrX5qil5KOJurw9iPSX7_98jVJ2iiUXNw', :description => '2 oz rum, Top with Cola, Lime wedge for garnish')


i1 = Ingredient.create(:name => 'Tequila', :image => 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRjGgex91fL7UEVv1qcuyX4IHispe_aBOb7H46baK48c7uGw5Ib')
i2 = Ingredient.create(:name => 'Triple Sec', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQILL8zGqkF39U_IqpHvKLQv6GHb6UsVLRgLTMC03IeYXh9uOjIFw')
i3 = Ingredient.create(:name => 'Vodka', :image => 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRO1YXbCCfpa_grGEYP1nTGIK4C54A1xYREZMfOpvcvXcpkvmfY4Q')
i4 = Ingredient.create(:name => 'Kahlua Coffee Liqueur', :image => 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcT6lkQPh3NwXSjwO_wQgvl447EsGlQobfaUnsaXSezRgcuUE50vXw')
i5 = Ingredient.create(:name => 'Cream', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0s86dv2fSgSWFmFweomI5KhrG7QS4cqfcLOls57Rv7xeES46aig')
i6 = Ingredient.create(:name => 'Whiskey', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSDg4QyS7E8YdZyfgfGfLP7d8UoRpq8-VGLDfnHByrqgeQSg_9Q4A')
i7 = Ingredient.create(:name => 'Ginger Ale', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaWTQGXf-6CNtQ5c8RmOYacv54BoIedht-n2FUHQEUiTWivUOs')
i8 = Ingredient.create(:name => 'Gin', :image => 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQGaqDvg-Gxgxz1Mltxt9w-r2YZFSy2xweI1sKF_yswDYlV9m3W1Q')
i9 = Ingredient.create(:name => 'Tonic Water', :image => 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTlRLIoy_y9PYyz9bdoRkhV36I7raYvDgynzKC8A_G71n-VWdLVCw')
i10 = Ingredient.create(:name => 'Lime Wedge', :image => 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTkNyIhODt7B0Z2NPhCWPaGbiZbk0RHHkybs-7uFNNrKyt4Xh3QBw')
i11 = Ingredient.create(:name => 'Rum', :image => 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTLwecqsNB_uo-eKYiwZibunYHbQCXxl1eTVdWD1sH93mGu30QkzQ')
i12 = Ingredient.create(:name => 'Cola', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSaxIo-yvfSYxnYy_eXxyiqyX1dWr9LT9YSksTVlD_mIvnYDTBSyQ')

u1.cocktails << c1 << c2 << c5
u2.cocktails << c3 << c4

c1.ingredients << i1 << i2
c2.ingredients << i3 << i4 << i5
c3.ingredients << i6 << i7
c4.ingredients << i8 << i9 << i10
c5.ingredients << i10 << i11 << i12