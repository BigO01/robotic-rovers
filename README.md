# Project Readme

### Description
This project solves landing problem for robotic rovers on Mars. It contains two ruby files `rover.rb` contains the main logic and `diver.rb` takes input from user through command line and drives `rover.rb`

### Requirements
Make sure you have the following dependencies installed before running the project:
- Ruby [2.7 - 3.2.1]

### Installation
To set up the project, just install any ruby version:
Using `RVM`
1. Run `rvm install ruby` to install the latest stable ruby version

### How to Run
To run the program, execute the following command in the terminal:
`ruby driver.rb [input file path(.txt)]`

e.g.

`ruby driver.rb input.txt`
### Things could be considered
1. We could add some test coverage as well for this using `minitest` or any other ruby toolkit
2. We could create an API instead and could make it available for the users to use remotely
