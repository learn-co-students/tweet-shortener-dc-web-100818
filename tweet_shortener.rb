require "pry"

def dictionary
  {"hello" => "hi", "to" => "2", "two" => "2", "too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
end


def word_substituter(tweet)
  tweet_array = tweet.split
  short_tweet = tweet_array.collect do |word|
    if dictionary.keys.include?(word.downcase)
      dictionary[word.downcase]
    else
      word
    end
  end
  short_tweet.join(" ")
end


def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end


def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end
  
  
def shortened_tweet_truncator(tweet)
  trunc_tweet = selective_tweet_shortener(tweet)
  if trunc_tweet.length < 140
    trunc_tweet
  else
    "#{trunc_tweet[0...137]}..."
  end
end