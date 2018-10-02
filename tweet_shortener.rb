def dictionary 
   {
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


def word_substituter (tweet)
  tweet_arr = tweet.split(" ")
  keys_arr = dictionary.keys
  tweet_arr.each do |word|
    if tweet_arr.include?(word) && keys_arr.include?(word) == true 
    tweet_arr[tweet_arr.index(word)] = dictionary[word]
    end
  end
  return tweet_arr.join(" ")
end 


def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end


def selective_tweet_shortener(tweet)
  if tweet.length > 140
    return word_substituter(tweet)
  else
    return tweet
  end
end


def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    return tweet = tweet[0..139]
  else 
    return tweet
  end
end