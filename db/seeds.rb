[
  'French Fries',  'Potato Wedges',
  'Caesar Salad', 'Lamb Kebab'
].each do |recipe_name|
    Recipe.create(
      course_type: :appetizer,
      name: recipe_name,
      description: "Description for #{recipe_name}"
    )
  end

[
  'Gravlax', 'Bibimbap',
  'Steak', 'Sweet and Sour Fish'
].each do |recipe_name|
    Recipe.create(
      course_type: :main_course,
      name: recipe_name,
      description: "Description for #{recipe_name}"
    )
  end

[
  'Ice Cream', 'Banana Split',
  'Sundae', 'Mochi', 'Bingsu'
].each do |recipe_name|
    Recipe.create(
      course_type: :dessert,
      name: recipe_name,
      description: "Description for #{recipe_name}"
    )
  end
