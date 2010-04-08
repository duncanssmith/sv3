require 'test_helper'

class DeviceTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end

	fixtures :devices

	def test_should_delete_one_device
		assert_difference 'Device.count', -1 do
			devices(:device_1).destroy
		end
	end
end
