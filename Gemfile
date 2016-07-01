source 'https://rubygems.org'

ruby(File.read(".ruby-version").strip) if File.exist?(".ruby-version")

gem "sidekiq"

group :development do
  gem "foreman"
  gem "rake"
end

group :development, :test do
  gem "pry"
end

group :test do
  gem "rspec"
  gem "dotenv"
end
