# Thor::Levenshtein
[![Dependency Status](https://gemnasium.com/jimjh/thor-levenshtein.png)](https://gemnasium.com/jimjh/thor-levenshtein)
[![Code Climate](https://codeclimate.com/github/jimjh/thor-levenshtein.png)](https://codeclimate.com/github/jimjh/thor-levenshtein)
[![Build Status](https://travis-ci.org/jimjh/thor-levenshtein.png?branch=master)](https://travis-ci.org/jimjh/thor-levenshtein)

## Usage
To use, just add `thor-levenshtein` to your Gemfile and require it as follows:

```ruby
require 'thor'
require 'thor/levenshtein'

class A < Thor
  desc "describe NAME", "say that someone is amazing"
  method_options :forcefully => :boolean
  def describe(name, opts)
    ret = "#{name} is amazing"
    puts opts["forcefully"] ? ret.upcase : ret
  end
  desc 'protect', 'declare loyalty to Asgard'
  def protect(name, opts)
    puts 'I live to protect Asgard.'
  end
end
```

#### Output
```sh
$> ./a.rb dscribe
Could not find task "dscribe".

Did you mean this?
        describe
```
