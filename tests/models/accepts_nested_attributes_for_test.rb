require 'test_helper'
require 'models/config'

class AcceptsNestedAttributesForTest < Test::Unit::TestCase
  include MammalSample

  context "Assigning legs to the dog" do
    setup do
      initialize_db
      create_mammals
      create_legs

      Mammal.class_eval do
        has_many :legs
        accepts_nested_attributes_for :legs, :reject_if => :all_blank
      end
    end

    should "not fail if legs association added to re-opened Mammal class" do
      assert_nothing_raised do
        Dog.new :legs_attributes => [ { :length => :reach_ground } ]
      end
    end

    should "support nested attributes on all descendent classes" do
      assert_nothing_raised do
        Beagle.new :legs_attributes => [ { :length => :awfully_short } ]
      end
    end

  end

end
