require 'mysql2'
client = Mysql2::Client.new(host: "mysql_host", username: "root", password: "labgoal", database: "app_development")
sql = "CREATE TABLE IF NOT EXISTS visits(id INT PRIMARY KEY AUTO_INCREMENT,created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP)"
client.query(sql)
