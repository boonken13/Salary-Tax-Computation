require 'minitest/autorun'
require_relative '../ComputeTax'

# Test program
class ComputeTax_Test < Minitest::Test  
  def test_tax
    samples = [
      { 'name' => 'a', 'salary' => 60000, 'output' =>  6000},
      { 'name' => 'b', 'salary' => 200000, 'output' =>  48000},
      { 'name' => 'c', 'salary' => 80150, 'output' =>  10045}
    ]
    # skip
    samples.each do |sample|
      name = sample['name']
      salary = sample['salary']
      output = sample['output']
      
      taxcalculator = ComputeTax.new(name, salary)
      assert_equal output, taxcalculator.tax()
    end
  end
end