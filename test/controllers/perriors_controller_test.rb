require "test_helper"

class PerriorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @perrior = perriors(:one)
  end

  test "should get index" do
    get perriors_url
    assert_response :success
  end

  test "should get new" do
    get new_perrior_url
    assert_response :success
  end

  test "should create perrior" do
    assert_difference('Perrior.count') do
      post perriors_url, params: { perrior: { content: @perrior.content, title: @perrior.title } }
    end

    assert_redirected_to perrior_url(Perrior.last)
  end

  test "should show perrior" do
    get perrior_url(@perrior)
    assert_response :success
  end

  test "should get edit" do
    get edit_perrior_url(@perrior)
    assert_response :success
  end

  test "should update perrior" do
    patch perrior_url(@perrior), params: { perrior: { content: @perrior.content, title: @perrior.title } }
    assert_redirected_to perrior_url(@perrior)
  end

  test "should destroy perrior" do
    assert_difference('Perrior.count', -1) do
      delete perrior_url(@perrior)
    end

    assert_redirected_to perriors_url
  end
end
