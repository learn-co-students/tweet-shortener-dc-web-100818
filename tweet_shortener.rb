def dictionary
{
  'hello' => 'hi',
  'to' => '2',
  'two' => '2',
  'too' => '2',
  'for' => '4',
  'four' => '4',
  'be' => 'b',
  'you' => 'u',
  'at' => '@',
  'and' => '&'
}
end

def word_substituter(tweet)
  shortened = []
  words = tweet.split(" ")
  substitutes = dictionary.keys

  words.each do |word|
    if substitutes.include?(word.downcase)
      shortened << dictionary[word.downcase]
    else
      shortened << word
    end
  end

  shortened.join(" ")
end


def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.size > 140
    return word_substituter(tweet)
  end

  tweet
end

def shortened_tweet_truncator(tweet)
  short = selective_tweet_shortener(tweet)

  if short.size > 140
    return short[0...140]
  end

  tweet
end
