Traveler's Insight is a CLI app that creates a browseable travelogue.

It allows users to:

- create recommendations for attractions in different countries
- read their own and others' recommendations
- update a recommendation
- delete a recommendation

How to run it:

1. from root directory: ruby runner.rb

Example CRUD actions:

1. Intro:Welcome to Traveler's Insight!!!
   Input:What is your name? <Your_name>

2. Create Recommendation:
   Input:
   a. What country are you interested in? Germany
   b. For the country Germany, what is your recommendation? Eat the Marzupan
   Output:
   Whoohoo! You made this recommendation: Eat the Marzupan!

3. Read Recommendation:
   Input:
   a. What country are you interested in? Germany
   Output:
   The country you are interested in is Germany!
   Finn for the country Germany, the recommendation is Eat the Marzupan!

4. Update Recommendation:
   Input:
   a. What country are you interested in? Germany
   Output:
   The country you are interested in is Germany!
   The recommendation for Germany is Eat the Marzupan.
   Input:
   What would you like to change it to? Kraftwerk is beautiful
   Output:
   You changed the recommendation for Germany to Kraftwerk is beautiful. Thanks!

5. Read Recommendation:
   Input:
   a. What country are you interested in? Germany
   Output:
   Finn for the country Germany, the recommendation is Kraftwerk is beautiful!

6. Delete Recommendation:
   Input:
   a. What country are you interested in? Germany
   Output:
   The recommendation for Germany has been deleted from Traveler's Insight.

7. Exit App
   Output:
   Happy travels!
