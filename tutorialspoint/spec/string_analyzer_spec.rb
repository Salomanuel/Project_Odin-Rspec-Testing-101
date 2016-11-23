require "spec_helper"

describe StringAnalyzer do
	context "With valud input" do

		before(:each) do
			@sa = StringAnalyzer.new
		end

		it "should detect when a string contains vowels" do
			test_string = "uuu"
			expect(@sa.has_vowels? test_string).to be true
		end

		it "should detect when a string doesn't contain vowels" do
			test_string = "bcdfg"
			expect(@sa.has_vowels? test_string).to be false
		end

		it "just one vowel and no other letters" do
			test_string = "aaa"
			expect(@sa.has_vowels? test_string).to be true
		end

		it "at least one vowel and some consonants" do
			test_string = "abcefg"
			expect(@sa.has_vowels? test_string).to be true
		end

		it "only has consonants" do
			test_string = "mnklp"
			expect(@sa.has_vowels? test_string).to be false
		end

		it "is an empty string" do
			test_string = ""
			expect(@sa.has_vowels? test_string).to be false
		end

		it "has vowels, consonants, numbers and punctuation" do
			test_string = "abcde55345&??"
			expect(@sa.has_vowels? test_string).to be true
		end
	end
end
