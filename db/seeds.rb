# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@overview1 = 'There are a couple of ways you can find inluencers on Fohr.'
@overview2 = 'You can find them in the daily edit'

@section1 = Section.create(title: 'Getting Started', overview: @overview1)
@section2 = Section.create(title: 'Explore', overview: @overview2)

@question1 = 'How do I find influencers?'
@answer1 = 'By clicking here'

@question2 = 'What does verified authentic mean?'
@answer2 = 'Having a verified authentic following means that the accounts follow you are active.'

@faq1 = Faq.create(question: @question1, answer: @answer1, section: @section1)
@faq2 = Faq.create(question: @question2, answer: @answer2, section: @section2)

@article_title1 = 'How It Works'
@content1 = 'A simple way to discover new influencers is on our The Daily Edit Page'

@article_title2 = 'Discovering Influencers'
@content2 = 'A simple way to discover new influencers is on our The Daily Edit Page.'

@article1 = Article.create(title: @article_title1, content: @content1, section: @section1)
@article2 = Article.create(title: @article_title2, content: @content2, section: @section2)
