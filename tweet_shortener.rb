# Write your code here.
def dictionary
   {
    "hello" => "hi",
    "to, two, too" => '2', 
    "for, four" => '4',
    'be' => 'b',
    'you' => 'u',
    "at" => "@" ,
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_word_arr = tweet.split(" ")
  
  x = tweet_word_arr.collect do |word|
      if dictionary.keys.include?(word)
        dictionary.collect do |term, abbrev|
          if word == term
            word = abbrev
          end 
        end
      else
      end
  end

x.flatten.compact.join(" ")
end