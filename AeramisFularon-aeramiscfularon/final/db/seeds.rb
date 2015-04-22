puts 'Adding a whole bunch of recipes'
Recipe.create [
  {
    title: 'Blueberry Banana Bread',
    type: "snack",
    desc: 'Blueberries and banana combine so well together in this delicious, super moist bread made with lots of very ripe sweet bananas which allow you to cut back on the fat without sacrificing the flavor and texture. This is perfect for breakfast or snack and can also be made as muffins if you prefer.',
    photo_url: 'http://3.bp.blogspot.com/-YhGAIQ2rltk/VTO_sKdZL-I/AAAAAAAASJ4/Ew_pFVegt_I/s1600/Lighter%2BBlueberry%2BBanana%2BBread-2.jpg',
    site_url: 'http://www.skinnytaste.com/2015/04/blueberry-banana-bread.html'
  },
  {
    title: 'Chicken and Mushrooms in a Garlic White Wine Sauce',
    type: "entree",
    desc: 'Here\'s a great tasting, quick and easy chicken dish; perfect for busy weeknights and great for those on a budget! I made this in about 20 minutes or less and served this over some brown rice cooked in chicken broth.',
    photo_url: 'https://lh6.googleusercontent.com/_BizpeaUzxq8/TYoMl-zgITI/AAAAAAAAC5w/Ho_-B1ErrKo/s800/low-fat-chicken-mushrooms-white-wine-sauce.jpg',
    site_url: 'http://www.skinnytaste.com/2011/03/chicken-and-mushrooms-in-garlic-white.html'
  }
]
