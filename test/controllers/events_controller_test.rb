require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  test "should get all_events:string" do
    get events_all_events:string_url
    assert_response :success
  end

end
