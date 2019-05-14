class Recipe < ApplicationRecord
  enum course_type: %i[appetizer main_course dessert]
end
