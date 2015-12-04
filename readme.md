Cucumber Demo
================================================

This is an example cucumber project with some very simple examples.

Running
--------

Just grab the source, and run cucumber from that directory with the formatters
you want to use:

    cucumber features/ --format html --out test.html --format pretty

Site Under Test
---------------
http://newtours.demoaut.com/

This website is a demo that has been used in the past for Mercury Interactive products,
which was bought by HP. You may have heard of QuickTest Pro. Note that some companies might not
like you writing scripts that directly interact with their production systems.

Exercise 1
----------
In small groups of 2-3 people, come up with some acceptance scenarios to for a feature (such as login, or registration,
 or the flight reservation) of the site above. Note that the website may be a bit buggy and/or quirky.

Exercise 2
----------
Implement some of the scenarios using the browser object and watir methods.

Exercise 3
----------
Implement a Page Object class to represent the page(s) under test

Exercise 4
----------
Use the page objects in place of directly interacting with Watir objects (@browser) in your step definitions.