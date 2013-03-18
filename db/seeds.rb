User.delete_all
Cocktail.delete_all
Ingredient.delete_all

u1 = User.create(:username => 'Eric', :password => 'a', :password_confirmation => 'a')
u2 = User.create(:username => 'Joe', :password => 'a', :password_confirmation => 'a')

c1 = Cocktail.create(:name => 'Margarita', :image => 'http://0.tqn.com/d/cocktails/1/I/q/J/-/-/margarita-002.jpg', :description => '1 1/2 oz tequila, 1/2 oz triple sec')
c2 = Cocktail.create(:name => 'White Russian', :image => 'http://0.tqn.com/d/cocktails/1/6/U/C/-/-/steel_helmet.jpg', :description => '1 1/2 oz vodka, 3/4 oz Kahlua coffee liqueur, 3/4 oz cream')
c3 = Cocktail.create(:name => 'Highball', :image => 'http://0.tqn.com/d/cocktails/1/I/7/L/-/-/88830463_9.jpg', :description => '2 oz whiskey, Top with ginger ale')
c4 = Cocktail.create(:name => 'Gin and Tonic', :image => 'http://0.tqn.com/d/cocktails/1/I/p/8/-/-/gin_tonic.jpg', :description => '2 oz gin, 5 oz tonic water, Lime wedge for garnish')
c5 = Cocktail.create(:name => 'Rum and Coke', :image => 'http://0.tqn.com/d/cocktails/1/I/e/G/-/-/Cuba_Libre.jpg', :description => '2 oz rum, Top with Cola, Lime wedge for garnish')


i1 = Ingredient.create(:name => 'Tequila', :image => 'http://0.tqn.com/d/cocktails/1/G/l/2/-/-/mx_161.jpg')
i2 = Ingredient.create(:name => 'Triple Sec', :image => 'http://0.tqn.com/d/cocktails/1/G/-/M/-/-/pineapple-chili-margarita-cocktail.jpg')
i3 = Ingredient.create(:name => 'Vodka', :image => 'http://0.tqn.com/d/cocktails/1/G/P/C/-/-/white_lotus-_vodka.jpg')
i4 = Ingredient.create(:name => 'Kahlua Coffee Liqueur', :image => 'http://0.tqn.com/d/cocktails/1/G/r/C/-/-/espresso_tini.jpg')
i5 = Ingredient.create(:name => 'Cream', :image => 'http://0.tqn.com/d/cocktails/1/G/L/G/-/-/milk_honey.jpg')
i6 = Ingredient.create(:name => 'Whiskey', :image => 'http://0.tqn.com/d/cocktails/1/G/5/E/-/-/bourbon_iceball.jpg')
i7 = Ingredient.create(:name => 'Ginger Ale', :image => 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTlUmjmNcneDPCBox9v8rXfq3v_pZ6QiOKseAMO1P3DaoOc4M7a')
i8 = Ingredient.create(:name => 'Gin', :image => 'http://0.tqn.com/d/cocktails/1/G/5/8/-/-/martini_1.jpg')
i9 = Ingredient.create(:name => 'Tonic Water', :image => 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcTlRLIoy_y9PYyz9bdoRkhV36I7raYvDgynzKC8A_G71n-VWdLVCw')
i10 = Ingredient.create(:name => 'Lime Wedge', :image => 'http://0.tqn.com/d/cocktails/1/5/N/0/-/-/lime_ends_2.jpg')
i11 = Ingredient.create(:name => 'Rum', :image => 'http://cn1.kaboodle.com/hi/img/b/0/0/2a/3/AAAAC02C43UAAAAAACo2Lw.jpg?v=1232658614000')
i12 = Ingredient.create(:name => 'Cola', :image => 'http://static.caloriecount.about.com/images/medium/coca-cola-classic-182981.jpg')

u1.cocktails << c1 << c2 << c5
u2.cocktails << c3 << c4

c1.ingredients << i1 << i2
c2.ingredients << i3 << i4 << i5
c3.ingredients << i6 << i7
c4.ingredients << i8 << i9 << i10
c5.ingredients << i10 << i11 << i12