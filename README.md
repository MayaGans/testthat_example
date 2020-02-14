# Using testthat and shinytest with Shiny

- [X] Test one is very basic, making sure a string is the expected string
- [X] Test two doesn't quite work yet, expecting a dataframe but showing as not the same when I think they are?

- [X] Create test folder containing tests
  - How should this be structured? 
  - Does each test belong in its own file (as I have it)? 
  - Do you create families of tests in their own files? 
  - What exactly IS "context"
  - Once organized, how do you "run all tests"? (right now I just ran the contents of test_1 and then test_2. This seems wrong)
  
- Tests that don't error follow the silence is golden rule. When the user can "run all tests" is there a way to print the test name and "passed" for the tests that pass, and not just show errors?
