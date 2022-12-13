require 'count_words'

RSpec.describe "count_words method" do
    context "given an empty string" do
        it "returns an empty string" do
            result = count_words("")
            expect(result).to eq ""
end
end

context "given a string of five words" do
    it "returns that string" do
        result = count_words("one two three four five")
        expect(result).to eq "one two three four five"
end
end

context "given a string of six words" do
    it "returns the first five with a ..." do
        result = count_words("one two three four five six")
        expect(result).to eq "one two three four five..."
end
end
end

  