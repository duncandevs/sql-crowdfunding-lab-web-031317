#selects_the_titles_of_all_projects_and_their_pledge_amounts (FAILED - 1)
#selects_the_user_name_age_and_pledge_amount_for_all_pledges (FAILED - 2)
#selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal (FAILED - 3)
#selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount (FAILED - 4)
#selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category (FAILED - 5)
#selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_book_category (FAILED - 6)
# SELECT cats.name
# FROM cats
# INNER JOIN cats_owners
# ON cats.id = cats_owners.cat_id

# SELECT Cats.name, Cats.breed, Owners.name
# FROM Cats
# INNER JOIN Owners
# ON Cats.owner_id = Owners.id;
def selects_the_titles_of_all_projects_and_their_pledge_amounts
  "select projects.title, sum(pledges.amount) from pledges inner join projects on pledges.project_id = projects.id group by pledges.project_id order by projects.title"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges
  "select users.name, users.age, sum(pledges.amount) from users inner join pledges on users.id = pledges.user_id group by pledges.user_id order by users.name"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  "select projects.title,
      sum(pledges.amount) - projects.funding_goal as
      pledges_over_goal
   from pledges inner join projects
   on pledges.project_id = projects.id
   group by projects.title
   having pledges_over_goal >= 0"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_amount
"SELECT users.name, SUM(pledges.amount) FROM users JOIN pledges ON users.id = pledges.user_id GROUP BY users.name ORDER BY SUM(pledges.amount);"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
"SELECT projects.category, pledges.amount FROM projects INNER JOIN pledges ON projects.id = pledges.project_id
 WHERE projects.category = 'music'"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_book_category
"SELECT projects.category, SUM(pledges.amount) FROM projects INNER JOIN pledges ON pledges.project_id = projects.id WHERE projects.category = 'books'"
end
