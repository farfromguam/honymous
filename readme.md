Honymous
========
Honest and Anonymous comments


Author:
-------

Christopher Fryman <br>
\- With the help of - <br>
The students of the second NSS Cohort and <br>
The fine Mentors and Staff that support it <br>


Purpose:
--------

This is my capstone project for Ruby on Rails as assigned in NSS 2013.
The ultimate goal is to build a functional mini social network focused around Honest and Anonymous comments.


Usage:
------

Before running, make sure you have postgress installed and running locally<br>
Also run `bundle install` to load the necessary gems<br>
To run tests use `rake` <br>
To start the app use `rails s` <br>
To play with it locally visit http://localhost:3000/


Features:
---------

* Users can create profiles
* Users can create private profiles
* Users can edit update and delete profiles
* Users can use gravatar profile images
* User actions are protected by login
* Visitors can view profiles
* Visitors can navigate via search
* Visitors can comment on profiles
* Visitors can vote on comments
* Visitors can only vote on a comment once (to prevent spamming)
* Comments are sorted by vote count


Project state
=============

In Beta Testing<br>

[![Build Status](https://travis-ci.org/farfromguam/honymous.png)](https://travis-ci.org/farfromguam/honymous)

[![Code Climate](https://codeclimate.com/github/farfromguam/honymous.png)](https://codeclimate.com/github/farfromguam/honymous)

To Do:
------

- [ ] Require email confirmation
- [ ] Capture IP addresses of voters
- [ ] Run live demo on heroku
- [ ] pair with travis-ci.org
- [ ] Get health status from codeclimate
- [ ] Check test coverage with coveralls
- [ ] Add some stying

Project Log:
------------

2013-06-13: Project Started
2013-06-28: Public Unveiling of beta code


Future Plans:
-------------

Allow for select comments to be linked to a real person.
Allow Commenting on comments


Known Bugs:
-----------


License
=======

The MIT License (MIT)

Copyright (c) 2013 Christopher Fryman

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
