gem 'minitest', '~> 5.2'
require "minitest/autorun"
require "minitest/test"
require_relative '../lib/ncrmntr'

class NcrmntrTest < Minitest::Test

  def test_it_can_have_no_name_return_nil
    ncrmntr = Ncrmntr.new
    assert_nil ncrmntr.name
  end

  def test_it_can_have_a_name
    ncrmntr = Ncrmntr.new("Liz")
    assert_equal "Liz", ncrmntr.name
  end

  def test_haunted_without_name
    skip
    ncrmntr = Ncrmntr.new
    # assert ncrmntr.haunted?
    # NoMethodError: private method
  end

  def test_number_names_become_strings
    ncrmntr = Ncrmntr.new(3)
    assert_equal "3", ncrmntr.name
  end

  def test_can_check_who_belongs_to
    ncrmntr = Ncrmntr.new("You")
    assert_equal "This belongs to You", ncrmntr.owner
  end

  def test_BOO_if_belongs_to_nobody
    ncrmntr = Ncrmntr.new
    assert_equal "BOO", ncrmntr.owner
  end

  def test_default_result_is_0
    ncrmntr = Ncrmntr.new
    assert_equal 0, ncrmntr.display_result
  end

  def test_result_can_be_incremented
    ncrmntr = Ncrmntr.new("Hrafn")
    ncrmntr.add
    assert_equal 1, ncrmntr.display_result
  end

  def test_result_can_be_incremented_a_lot
    ncrmntr = Ncrmntr.new("Hrafn")
    100.times { ncrmntr.add }
    assert_equal 100, ncrmntr.display_result
  end

  def test_results_can_be_cleared_to_0
    ncrmntr = Ncrmntr.new
    100.times { ncrmntr.add }
    ncrmntr.clear
    assert_equal 0, ncrmntr.display_result
  end

  def test_start_result_method_private
    skip
    ncrmntr = Ncrmntr.new
    # ncrmntr.start_result
    # NoMethodError: private method
  end

  def test_haunted_method_private
    skip
    ncrmntr = Ncrmntr.new
    # assert_nil ncrmntr.haunted?
    # NoMethodError: private method
  end

  def test_who_is_method_private
    skip
    ncrmntr = Ncrmntr.new
    # assert_nil ncrmntr.who_is
    # NoMethodError: private method
  end

  def test_it_can_have_a_name_after_starting_without
    ncrmntr = Ncrmntr.new
    assert_nil ncrmntr.name
    ncrmntr.name = "Hrafn"
    assert_equal "Hrafn", ncrmntr.name
  end

  def test_it_can_be_renamed
    ncrmntr = Ncrmntr.new("Hrafn")
    assert_equal "Hrafn", ncrmntr.name
    ncrmntr.name = "Hrafnhildur"
    assert_equal "Hrafnhildur", ncrmntr.name
  end

  def test_haunted_calculators_display_negative_results
    ncrmntr = Ncrmntr.new
    ncrmntr.add
    assert_equal -1, ncrmntr.display_result
    ncrmntr.clear
    assert_equal 0, ncrmntr.display_result
    100.times {ncrmntr.add}
    assert_equal -100, ncrmntr.display_result
  end

end
