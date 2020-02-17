# Using testthat and shinytest with Shiny

Simple Shiny app to create two tests: (1) one for just simple text printing correctly, and another (2) where a dataframe is being filtered based on a numeric input value [the test is to make sure the filtered table matches the expected table].


##### TEST FOLDER:
- [X] Test one is very basic, making sure a string is the expected string
- [X] Test two requires turning a `renderTable` output from an HTML string into a dataframe, then we can compare that dataframe to our expected output.

##### QUESTIONS
  - How should the folder be structured? 
  - Does each test belong in its own file (as I have it)? 
  - Do you create families of tests in their own files? 
  - What exactly IS "context"
  - Once organized, how do you "run all tests"? (right now I just ran the contents of test_1 and then test_2. This seems wrong)
  
- Tests that don't error follow the silence is golden rule. When the user can "run all tests" is there a way to print the test name and "passed" for the tests that pass, and not just show errors?
