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
