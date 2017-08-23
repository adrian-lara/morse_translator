require './lib/translate.rb'
require 'minitest/autorun'
require 'minitest/pride'

class TranslateTest < Minitest::Test

  def test_translate_class_exists
    translator = Translate.new

    assert_instance_of Translate, translator
  end

  def test_eng_to_morse_translates_lower_case_text_to_morse
    translator = Translate.new

    assert_equal "......-...-..--- .-----.-..-..-..", translator.eng_to_morse("hello world")
  end

  def test_eng_to_morse_translates_lower_case_letters_and_numbers
    translator = Translate.new

    assert_equal "-......-.. .-.-.. ...-- ..........--....", translator.eng_to_morse("There are 3 ships")
  end

  def test_from_file_translates_text_from_file_to_morse
    translator = Translate.new

    asssert_equal ".. .--- ..-. .- ..-....-...", translator.from_file("input.txt")
  end


end
