# rails-multi-tenant-saas

This is a skeleton for multi tenant saas application.
This has been developed using Ruby on Rails and PostGreSql as database
and has been deployed in Heroku server.

Description:

DEVISE gem has been used for User authentication.
To send confirmation email SendGrid addon used in heroku server and for sending ansynchronous confirmation email devise-async and sidekiq Gem used along with REDIS database. In heroku REDISTOGO addon added for REDIS.

Here Simple_Form Used for Form generation and Bootstrap used for styles.

Payment processing on subscription has done by stripe integratoin.
