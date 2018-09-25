require "pry"

def dictionary
  key = {
  "hello" => "hi",
  "to" => "2",
  "two" => "2",
  "too" => "2",
  "for" => "4",
  "For" => "4",
  "four" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }
end 

def word_substituter(tweet)
  dictionary
  tweet = tweet.split
  tweet.collect! do |i|
    if dictionary.key? ("#{i}")
      dictionary[i]
    else
      i
    end 
  end
  tweet.join(" ")
end 

def bulk_tweet_shortener (array_tweets)
  array_tweets.each do |n|
    puts word_substituter(n)
  end 
end

def selective_tweet_shortener (tweet)
  if tweet.length > 140 
    word_substituter(tweet)
  else 
    tweet
  end
end 

def shortened_tweet_truncator (tweet)
  selective_tweet_shortener (tweet)
  if tweet.length > 140
    tweet[0...140]
  else
    tweet
  end 
end 

