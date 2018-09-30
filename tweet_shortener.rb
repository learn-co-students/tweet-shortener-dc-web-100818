# Write your code here.
def dictionary
  word_list = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end
 def word_substituter(tweet)
  tweet_words = tweet.split(" ")
  sub_list = dictionary
  tweet_words = tweet_words.collect {|word|
    if sub_list.keys.include? word.downcase
      word = sub_list[word.downcase]
    else
      word = word
    end
  }
  tweet_words.join(" ")
end
 def bulk_tweet_shortener(tweets)
  tweets.each {|tweet|
    puts word_substituter(tweet)
  }
end
 def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end
 def shortened_tweet_truncator(tweet)
  tweet = selective_tweet_shortener(tweet)
  if tweet.length > 140
    tweet = tweet[0..139]
    tweet[137..139] = "..."
  end
   tweet
end
