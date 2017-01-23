require 'rspec'


# def sentence_reverser str
#   newstr = str.split
#   newstr.reverse!
#   newstr.join(" ")
# end

def sentence_reverser str
  # newstr = str.split.reverse!.join(" ")
  str.split.reverse.join
end

describe "Sentence reverser" do
  it 'reverses the words in a sentence' do
    test_sentence = "backwards am I"
    expect(sentence_reverser(test_sentence)).to eq('I am backwards')
  end
end

# !(" ")