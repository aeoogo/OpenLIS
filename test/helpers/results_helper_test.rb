# frozen_string_literal: true

require 'test_helper'

class ResultsHelperTest < ActionView::TestCase
  include ResultsHelper

  setup do
    @result = results(:result)
  end

  test 'format pending result' do
    assert_equal 'pend.', format_value(@result)
  end

  test 'format quantitative result' do
    @result.value = 10
    assert_equal '10', format_value(@result)

    @result.value = 1000
    assert_equal '1,000', format_value(@result)

    @result.lab_test = lab_tests(:decimal)
    assert_equal '1,000.0', format_value(@result)
  end

  test 'format qualitative result' do
    @result.update(lab_test: lab_tests(:qualitative),
                   lab_test_value: lab_test_values(:positive))
    assert_equal 'Positive', format_value(@result)
  end

  test 'format qualitative result with escaped characters' do
    @result.update(lab_test: lab_tests(:qualitative),
                   lab_test_value: lab_test_values(:less_than))
    assert_equal '< 10', format_value(@result)

    @result.lab_test_value = lab_test_values(:greater_than)
    assert_equal '> 10', format_value(@result)
  end

  test 'format qualitative result marked-up with html' do
    @result.update(lab_test: lab_tests(:qualitative),
                   lab_test_value: lab_test_values(:html))
    assert_equal '<i>E. coli</i>', format_value(@result)
  end

  test 'format mixed result' do
    @result.update(lab_test: lab_tests(:mixed),
                   value: 10,
                   lab_test_value: lab_test_values(:positive))
    assert_equal 'Positive [10]', format_value(@result)

    @result.value = 1000
    assert_equal 'Positive [1,000]', format_value(@result)

    @result.lab_test_value = lab_test_values(:less_than)
    assert_equal '< 10 [1,000]', format_value(@result)
  end

  test 'format ratio result' do
    @result.update(lab_test: lab_tests(:ratio),
                   value: '1:2')
    assert_equal '1∶2', format_value(@result)
  end

  test 'format range result' do
    @result.update(lab_test: lab_tests(:range),
                   value: '1-2')
    assert_equal '1–2', format_value(@result)
  end

  test 'format fraction result' do
    @result.update(lab_test: lab_tests(:fraction),
                   value: '1/2')
    assert_equal '1 ∕ 2', format_value(@result)
  end

  test 'format text result' do
    @result.update(lab_test: lab_tests(:text),
                   value: 'This is the result')
    assert_equal 'This is the result', format_value(@result)
  end

  test 'qualitative-only results should not have units' do
    @result.update(lab_test: lab_tests(:mixed),
                   value: nil,
                   lab_test_value: lab_test_values(:positive))
    assert_nil format_units(@result)
  end

  test 'numerical-qualitative results should have units' do
    @result.update(lab_test: lab_tests(:mixed),
                   value: nil,
                   lab_test_value: lab_test_values(:less_than))
    assert_equal 'Units', format_units(@result)
  end

  test 'quantitative results should have units' do
    @result.update(lab_test: lab_tests(:mixed),
                   value: 10,
                   lab_test_value: lab_test_values(:positive))
    assert_equal 'Units', format_units(@result)
  end

  test 'reference range table contains less than symbol' do
    result_ranges = [[nil, nil, nil, '<', '10']]
    assert_equal '<table><tbody><tr><td class="range_0"></td><td class="range_1"></td><td class="range_2"></td><td class="range_3">&lt;</td><td class="range_4">10</td></tr></tbody></table>',
                 ranges_table(result_ranges)
  end

  test 'reference range table contains greater than symbol' do
    result_ranges = [[nil, nil, nil, '≥', '10']]
    assert_equal '<table><tbody><tr><td class="range_0"></td><td class="range_1"></td><td class="range_2"></td><td class="range_3">≥</td><td class="range_4">10</td></tr></tbody></table>',
                 ranges_table(result_ranges)
  end

  test "reference range table contains gender info if patient's gender is unknown" do
    result_ranges = [['M: ', nil, '0', '–', '10'],
                     ['F: ', nil, '100', '–', '200']]
    assert_equal '<table><tbody><tr><td class="range_0">M: </td><td class="range_1"></td><td class="range_2">0</td><td class="range_3">–</td><td class="range_4">10</td></tr><tr><td class="range_0">F: </td><td class="range_1"></td><td class="range_2">100</td><td class="range_3">–</td><td class="range_4">200</td></tr></tbody></table>',
                 ranges_table(result_ranges)
  end
end
