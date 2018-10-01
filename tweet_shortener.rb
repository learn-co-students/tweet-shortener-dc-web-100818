# Write your code here.
def dictionary
shortcuts = {
"hello" => "hi",
"to" => "2",
"two" => "2",
"too" => "2",
"for" => "4",
"four" => "4",
"For" => "4",
"be" => "b",
"you" => "u",
"at" => "@",
"and" => "&"
}
end

def word_substituter(tweet)
shortcuts = dictionary
words = tweet.split(" ")

words.collect do |word|
dictionary.collect do |long, sub|
if word == long
word.replace(sub)
end
end
end
words.join(" ")
end


def bulk_tweet_shortener(tweet_array)
tweet_array.collect do |tweet|
puts word_substituter(tweet)
end
end

def selective_tweet_shortener(tweet)

if tweet.length >= 140 #return short
word_substituter(tweet)

else tweet #return orig

end
end 

def shortened_tweet_truncator(tweet)
if word_substituter(tweet).chars.length >= 140
tweet = word_substituter(tweet).chars[0..136].push("...").join("")
else word_substituter(tweet)

end
end
