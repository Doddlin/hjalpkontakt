require 'test_helper'

class FbgroupTest < ActiveSupport::TestCase
  
  test "Should not overwrite coords from user" do
    fbgroup = Fbgroup.new
    assert_not fbgroup.save

  end

end
