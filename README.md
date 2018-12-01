This application will eventually be a graphql api for an A.E.G.I.S. list builder.
A.E.G.I.S. is a Combining Robot Strategy Game, see: http://zephyrworkshop.com/aegis/ 

A web ui for the api will be written eventually as well.

TODO: Write a real README ;)


#### Code Style Note
- A.E.G.I.S. uses the term 'class', which is also a central term in the ruby language, as well as a keyword.
I will use the term 'robot_class' in the source code consistently, when I mean class in the A.E.G.I.S. sense.

### Windows
#### Windows Setup
- Install postgres: https://www.enterprisedb.com/downloads/postgres-postgresql-downloads
  Once it is installed use pgAdmin to add a user. Connect to the postgres server, and right click the server.
  Choose Create > Login/Group Role. The username and password in database.yml currently is 'aegis'/'testpass', but
  I'd use a different password at least, since that is on Github (I'll be rearranging things soon).
  Create an aegis_development and aegis_test database, belonging to the aegis user.
  This can be done by right clicking the server and choosing Create > Database
- Install rustup and the stable-x86_64-pc-windows-gnu toolchain: https://rustup.rs/
  When you run the .exe from that page, it will try to install a different toolchain by default.
  You don't need to install that toolchain, but it won't hurt anything. If you can't select a different
  toolchain in the installer, after it is finished use the command `rustup toolchain install stable-gnu`
  followed by `rustup default stable-gnu`.
- Install some form of Git, I'm using Git Desktop on windows: https://desktop.github.com/
- Install Ruby 2.5.3 with RubyInstaller: https://github.com/oneclick/rubyinstaller2/releases/download/rubyinstaller-2.5.3-1/rubyinstaller-devkit-2.5.3-1-x64.exe
- Use git to clone the aegis repository to your computer. (if using Git Desktop, you can choose 'Open in Desktop' after clicking 'Clone or Download' on github.com)
- Run 'Start Command Prompt With Ruby' from your Start Menu
- Navigate to the directory you cloned aegis in.
- run `gem install bundler`. Bundler is used to manage dependencies via the Gemfile.
- run `bundle install`. This will install the gems listed in the Gemfile. It will fail when it gets to hypothesis-specs. This is expected.
  Navigate to the gem directory for hypothesis-specs. It will be at C:\Ruby25-x64\lib\ruby\gems\2.5.0\gems\hypothesis-specs-0.2.0
  if you installed Ruby to the default location. Once there run `rake helix:copy_dll`. 
  Then return to the aegis directory and `bundle install` again. It should succeed this time.
- Modify database.yml to include the username/pass for your postgres user. Then run `bundle exec rake db:migrate`.
  This will update the database schema to the current version, by running all of the migration scripts.
- Finally, run `bundle exec rails server` and once it starts, navigate to http://localhost:3000/. 
  You should see "Yay, You're on Rails!". You can also check out http://localhost:3000/graphiql to see an editor for
  graphQL queries on our server. Not useful yet, but it will be for testing out queries.
### Windows Caveat
- At least for me, the create:db rake task isn't working, because apparently the windows installer didn't add the
  createdb script for postgres, which the rake task relies on. That's why the instructions above have you manually create
  the databases. 
- As we have more caveats, we may move to using Docker :)