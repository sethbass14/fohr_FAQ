# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
@overview1 = 'There are a couple of ways you can find inluencers on Fohr.'
@section1 = Section.create(title: 'Getting Started', overview: @overview1)

@question1 = 'How do I find influencers?'
@answer1 = 'By clicking here'
@faq1 = Faq.create(question: @question1, answer: @answer1, section: @section1)

@article_title1 = 'How It Works'
@content1 = 'A simple way to discover new influencers is on our The Daily Edit Page'
@article1 = Article.create(title: @article_title1, content: @content1, section: @section1)
