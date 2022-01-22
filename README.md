# README

This is a shell Rails application to demonstrate the peculiar
dependent-test failure which is described in the VectorLogic blog
[here](https://vector-logic.com/blog/posts/what-the-spec).

The setup of the shell application just follows the rspec-rails
[Start from Scratch instructions](https://relishapp.com/rspec/rspec-rails/docs/gettingstarted).

To see the test failure under consideration you should run the two sample
specs individually first, then run them consecutively after:

> bundle exec rspec spec/test_1_spec.rb # All PASS
> bundle exec rspec spec/test_2_spec.rb # All PASS
> bundle exec rspec spec/test_1_spec.rb spec/test_2_spec.rb # Last test FAIL
> bundle exec rspec spec/test_2_spec.rb spec/test_1_spec.rb # All PASS

Please refer to the [blog article](https://vector-logic.com/blog/posts/what-the-spec) for a discussion on why this happens.
