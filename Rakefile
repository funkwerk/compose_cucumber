task default: :build

desc 'Builds the Gem.'
task build: :test do
  sh 'gem build compose_cucumber.gemspec'
end

desc 'Publishes the Gem'
task :push do
  sh 'gem push compose_cucumber-0.0.1.gem'
end

desc 'Tests the application'
task test: :format
task test: :rubocop
task test: :cucumber

task :cucumber do
  options = %w()
  options.push '--tags ~@skip' unless ENV['skipped']
  sh "RUBYLIB=lib:$RUBYLIB cucumber #{options * ' '}"
end

desc 'Checks ruby style'
task :rubocop do
  sh 'rubocop'
end

task :format do
  sh 'gherkin_format features/*.feature'
end
