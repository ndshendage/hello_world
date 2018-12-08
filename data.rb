data = JavascriptLearning

count = 0
desired_count = 15
function_name = ['India', 'Australia', 'England', 'WestIndies', 'Bangladesh'] + ['India', 'Australia', 'England', 'WestIndies', 'Bangladesh'] + ['India', 'Australia', 'England', 'WestIndies', 'Bangladesh']
while count < desired_count do
  JavascriptLearning.create!(description: 'This is good country and can play great cricket', function_name: function_name[count], minimum: count, maximum: count + 1)
  count += 1
end