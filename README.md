# Customize.css

customize.css provides you with the base styling for your application and gives you ability to easily customize the look of your app.
The main advantage of this lib that you don't have to overwrite styles you can just set it.
Another advantage is that all inputs, checkboxes, radio buttons, select boxes have the same look and behaviour in all browsers.
Also you can change the look of select or checkbox by setting several `sass` maps.
This is the engine that supports themes so developers are able to share themes between each other.

## Rails instalation

In your Gemfile you need to add the `customize-rails` gem, and ensure that the `sass-rails` gem is present - it is added to new Rails applications by default.

```ruby
gem 'customize-rails'
```

It is also recommended to use [Autoprefixer](https://github.com/ai/autoprefixer-rails)
to add browser vendor prefixes automatically. Simply add the gem:

```ruby
gem 'autoprefixer-rails'
```

`bundle install` and restart your server to make the files available through the pipeline.

Import main file in `app/assets/stylesheets/application.css.scss`:

```scss
@import 'customize';
```

Also you can import themes before it

```scss
@import 'some-awesome-theme';
@import 'customize';
```

Customize the look of anything before importing:

```scss

$inputs: (
  border: 3px solid red;
);

@import 'some-awesome-theme';
@import 'customize';
```
Make sure the file has `.scss` extension (or `.sass` for Sass syntax). If you have just generated a new Rails app,
it may come with a `.css` file instead. If this file exists, it will be served instead of Sass, so remove it:

```console
$ rm app/assets/stylesheets/application.css
```

Do not use `//= require` in Sass or your other stylesheets will not be [able to access][antirequire] the variables.

##TO DO

1. Make example of theme
2. Select focus state
