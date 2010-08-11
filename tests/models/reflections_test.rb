require 'test_helper'
require 'models/config'

class ReflectionsTest < Test::Unit::TestCase
  include MammalSample

  context "including associations in #find calls" do
    setup do
      initialize_db
      create_mammals
      create_legs
    end

    should "not fail if re-opened association is included in #find call" do
      assert_nothing_raised do
        Dog.find :all, :conditions => {:legs => {:length => :reaches_the_ground}}, :include => :legs
      end
    end

    should "not fail if re-opened association is included in a deeper subclass #find call" do
      assert_nothing_raised do
        Beagle.find :all, :conditions => {:legs => {:length => :reaches_the_ground}}, :include => :legs
      end
    end
  end
end
