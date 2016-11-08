Course List >> Web Development 101 >> The Back End >> 3: Testing Basics 
#[Testing 101](http://www.theodinproject.com/courses/web-development-101/lessons/testing-basics)

Testing is one of those things that people often don't think about when they decide to learn about web development but it's critically important to the production of professional quality applications and it will save you tons of time and headache in the end.

Let's say you're building a simple website and you've got a couple of pages linked together with a simple navigation bar at the top. You make some changes to the code and want to know if the website still works. So you open up your local version of the webpage and click through each of the buttons on the navigation bar to make sure they each still lead to the right location. Not too difficult, is it? It doesn't take too long, and it doesn't seem like such a bad way of doing things.

But now imagine that you've got a dozen pages with a login system and content that's meant to look different depending on which type of user you are logged in as. You could come up with a checklist of all the buttons you'd have to manually click on and all the times you'd have to login as a different user... but think about how many steps it would take before you were satisfied that your changes didn't accidentally blow up some obscure but necessary function of your website? Situations like that should yell "automate me!" in your head, and that's exactly what testing does.

On the back end, you will learn RSpec, a language that is written in Ruby and one which will help you execute a broad and flexible script of tests to make sure your application is still working the way that it should. RSpec's syntax even reads sort of like English, though it still takes some getting used to. RSpec lets you test specific areas of your application like pulling from and saving to the database or that your helper methods work as expected. With the help of a few useful gems, you can also test the broad-scale interactions the user will have when traveling from one web page to another.

Although we're covering this topic in the "Back End" section, testing isn't just for the server-side. On the front end, we'll later learn a language called Jasmine to do a similar sort of thing for Javascript. That should make sense to you -- the reasons to properly test your code apply whether it's run on a server or in the browser.
##Approaches to Testing

Everyone does testing a little differently. Some teams still rely heavily on a Quality Assurance (QA) department with people manually executing checklists like we described in the example above. Some people use an approach called Test Driven Development (TDD) in which they write the (failing) test first and only then do they actually write the code necessary to make it pass, and thus very deliberately build the application out with 100% test coverage. Others prefer to keep their test suites fairly light and will only write tests for the major interactions on their pages and any bugs that they have to fix along the way (to make sure they don't come back).

Regardless of how exactly it's done, testing is highly important and you'll be required to do it whatever your job is. Beginning developers are often tasked to write tests and fix bugs to become familiar with a given code base. Luckily, we'll cover testing more in the Ruby and Rails and Javascript courses later in the curriculum.
##Points to Ponder

Look through these now and then use them to test yourself after doing the assignment

* What exactly does "testing" mean for web applications?
* Why is testing important?
* What is legacy code?
* Why is writing tests particularly powerful for handling legacy code?
* What is RSpec?
* How do you run a RSpec test suite?
* How do you write a basic RSpec test?

##Assignment:

1. Get a real-life perspective on why tests are so important by watching [this video](http://www.youtube.com/watch?v=nBtO1UOK9Hs) by Nell Shamrell. Some of the vocabulary may be stuff you haven't heard before (like "stubs" and "mocks"), but just absorb the message.
2. Do the [Introductory RSpec level](http://rspec.codeschool.com/levels/1) from Code School to become more familiar with Ruby's RSpec test framework.

##Additional Resources

This section contains helpful links to other content. It isn't required, so consider it supplemental for if you need to dive deeper into something

* [A very detailed treatise on test driven development](http://www.agiledata.org/essays/tdd.html) from AgileData.org.
* Sarah Allen's [video on TDD as a teaching tool](http://www.youtube.com/watch?v=KgfdlZuVz7I&list=PLUsjeAGxOpOq9VVgjs7FgvIHMULMrJI_w&index=2)
* A more generic (and shorter) [presentation on TDD](http://www.youtube.com/watch?v=y6yJuPJK67w&list=PLUsjeAGxOpOq9VVgjs7FgvIHMULMrJI_w&index=4)

---

#[A Taste of Testing Ruby with RSpec](http://www.theodinproject.com/courses/ruby-programming/lessons/introduction-to-rspec)

By now you've had some experience writing actual programs using Ruby. Presumably, you've been making sure they work by manually entering certain things in the command line over and over again. This was probably especially frustrating with some of the more complex projects you just did during the Algorithms and Data Structures lesson.

As you should recall from the Web Development 101 course, testing with RSpec lets you automate most of these activities. It also allows you to make sure your programs' interfaces with the public are functioning properly. It allows you to have confidence in your code and to not worry about changing things that may break stuff because you'll know immediately what broke and can more easily determine why. If you end up contributing to an open-source project, they'll want you to include specs to test whatever features you've created.

At the most basic level, RSpec is a "Domain Specific Language" (DSL, meaning it just does a very specific thing) written in Ruby that is designed to help you test your Ruby code. You use it by including the `rspec` gem, which is really just a package containing 3 other gems -- `rspec-core`, `rspec-expectations` and `rspec-mocks`. It's configured so that, once you've got the gem included, if you've laid out your project folders in the right places, you can just execute the specs directly from the command line. If you did the Test-First project in the Web Development 101 course, you should already be quite familiar with it.

We will cover testing in more depth in the Rails course, but you'll want to get a good base built in testing "plain old" Ruby first. It will also help you with the final project since you might otherwise find yourself endlessly entering data into the command line and using the debugger.

It's difficult to find good resources to teach RSpec for free. There are some decent paid resources (listed in the "Additional Resources" section below) but the free ones are very dispersed. The way you'll likely learn it is by knowing you want to do something and then Googling around for how to test it, or going through a tutorial where someone is using it.
##Points to Ponder

Look through these now and then use them to test yourself after doing the assignment

* How do you run an RSpec test suite?
* How do you write a basic RSpec test?
* What aspects of your methods should you test?
* What is a stub?
* What is a mock?
* What is a double?
* How are they different?
* When would you use them?

##Your Assignment

1. Go back to the Web Development 101 course and do the [RSpec section](http://www.theodinproject.com/web-development-101/testing-basics) if you haven't already.
2. Get started writing your own tests by reading [this 3-part series](https://semaphoreci.com/community/series/learn-rspec) and following the tutorial in part 1.
3. Take a glance at the [Relish RSpec official documentation](https://www.relishapp.com/rspec/rspec-core/v/2-4/docs). It will be a good resource for when you're scratching your head later.
4. Glance through [Better Specs](http://betterspecs.org/), which shows tons of examples of what you should and shouldn't do with RSpec.

##Additional Resources

This section contains helpful links to other content. It isn't required, so consider it supplemental for if you need to dive deeper into something

* [This video walkthrough](http://www.youtube.com/watch?v=JhR9Ib1Ylb8&feature=relmfu) and [the written tutorial](http://net.tutsplus.com/tutorials/ruby/ruby-for-newbies-testing-with-rspec/) version will give you another example walkthrough of tests being written, though some of the syntax is a bit out-dated.
* [The RSpec Book](http://www.amazon.com/The-RSpec-Book-Behaviour-Development/dp/1934356379) is THE book on RSpec, but at this point it's a little out-dated.
* [The RSpec Cheat](http://www.anchor.com.au/wp-content/uploads/rspec_cheatsheet_attributed.pdf) Sheet should help you avoid Googling every new bit of syntax.
* Read the [Wikipedia Page on Test Driven Development](http://en.wikipedia.org/wiki/Test-driven_development) for context on TDD if you're still feeling unfamiliar.