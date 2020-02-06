require 'capybara'
require 'capybara/cucumber'             #trás todas as configurações do cucumber para dentro o capybara (sempre)
require 'selenium-webdriver'

Capybara.configure do |config|
  config.default_driver = :selenium      #define o navegador selenium_chrome e selenium_headless(executa por trás)
  config.default_max_wait_time = 5
end
