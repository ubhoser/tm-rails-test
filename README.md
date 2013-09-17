## Trademob Rails Assignment

### Getting started
Fork this repository and set up the Rails test application in it on your machine. The application is based on Active Admin, take a look at [the documentation](http://www.activeadmin.info/documentation.html) to get started if you don't know it yet.

The default user for the application is `admin@example.com` with the password `password`.

You will find that we only minimally modified the boilerplate Active Admin application: there is a `Campaign` model with a name and budget, and an according Active Admin resource. 

For this assignment, please take this application as a basis and make your changes to implement the following requirements.

### Part 1: Platforms for campaigns

Our campaigns are run on different (mobile) platforms such as Android and iOS. Our campaign managers want to set one or more platforms for each campaign in the application from a list of available platforms (for now, `Android` and `iOS`). Each campaign must have at least one platform. We want to be able to add more supported platforms in the future.

### Part 2: Authorization and roles

Campaign managers should be able to manage campaigns and in particular add and remove platforms from them. However, they should not be able to configure the generally available list of platforms. Only admins are allowed to do that (e.g. they may want to add `Windows` to the generally available platforms). Devise and implement a suitable solution for handling of the two different user roles `admin` and `campaign manager`.

### Part 3: Audit trail for platform changes

We would like to track all changes to the platform settings for campaigns with a budget of more than 1000€ (don't worry about the currency, it's not part of the model for simplicity). So, if a platform is added or removed from a campaign that has a budget of more than 1000€, we would like to store a record about this somewhere. All users (i.e. admins and campaign managers) can review the list of records for each campaign.

### Wrapping up

Once you are done with your implementation, send us a link. A bit of documentation about your implementation probably won't hurt either. Good luck!