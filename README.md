# veeqo_projects

nah that's awesome, go for it! :smile: as for sending the email, without anything like Rails then yep you'd be better to use the SMTP class (https://ruby-doc.org/stdlib-2.0.0/libdoc/net/smtp/rdoc/Net/SMTP.html) or you could look at using a gem to produce it, just install that gem and you can see the code examples on the repo: https://github.com/mikel/mail.

As you'd wanna run it often though, you could:
- generate a new basic rails app
- add a rake task (https://railsguides.net/how-to-generate-rake-task/)
- put that app on heroku
- use heroku scheduler to run that rake task every week
