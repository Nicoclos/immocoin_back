require "test_helper"

class RealtiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @realty = realties(:one)
  end

  test "should get index" do
    get realties_url, as: :json
    assert_response :success
  end

  test "should create realty" do
    assert_difference("Realty.count") do
      post realties_url, params: { realty: { description: @realty.description, price: @realty.price, title: @realty.title } }, as: :json
    end

    assert_response :created
  end

  test "should show realty" do
    get realty_url(@realty), as: :json
    assert_response :success
  end

  test "should update realty" do
    patch realty_url(@realty), params: { realty: { description: @realty.description, price: @realty.price, title: @realty.title } }, as: :json
    assert_response :success
  end

  test "should destroy realty" do
    assert_difference("Realty.count", -1) do
      delete realty_url(@realty), as: :json
    end

    assert_response :no_content
  end
end
