require 'sinatra/base'
require 'mysql2'
require 'time'

class Services

  def self.client
    return @client if @client

    @client = Mysql2::Client.new(host: "mysql_host", username: "root", password: "labgoal", database: "app_development")
    sql = "CREATE TABLE IF NOT EXISTS visits(id INT PRIMARY KEY AUTO_INCREMENT,created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP)"
    @client.query(sql)
    @client
  end

  def self.total_visits
    client.query("SELECT * from visits").count
  end

  def self.add_visit
    client.query("INSERT INTO visits (id) VALUES (NULL)")
  end
end

class App < Sinatra::Base
  get '/' do
    Services.add_visit
    "Contador de visitas, #{Services.total_visits} visitas e contando..."
  end
end
