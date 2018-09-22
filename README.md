# Article Publication Site README
## Week 4 AUT Challenge @ Craft Academy
#### 2018-09-22
#### By Robin Börjesson And Shirmen Chen

#### Installation

Clone repo:
```
git clone https://github.com/Rinbo/rails_bdd.git
```
Run bundle:
```
bundle install
```
Create and migrate database:
```
rails db:create db:migrate:
```
run test suite to see that everything works:
```
cucumber
```
- Launch local server:
```
rails server
```
Go ahead and checkout the functionality in your browser at `localhost:3000` and then deply to your service of choice

#### Dependencis
Ruby version and dependencies are listed in the Gemfile

#### How it works

- On the landing page you can view published articles
- From here you can also follow the link to publish your own article
- Each article also lists how many comments that article has. To read comments or make your own, click the comment link at the bottom each article

