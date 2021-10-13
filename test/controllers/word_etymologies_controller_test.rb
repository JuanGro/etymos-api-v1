require 'test_helper'

class WordEtymologiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @word_etymology = word_etymologies(:one)
  end

  test "should get index" do
    get word_etymologies_url, as: :json
    assert_response :success
  end

  test "should create word_etymology" do
    assert_difference('WordEtymology.count') do
      post word_etymologies_url, params: { word_etymology: { etymology_id: @word_etymology.etymology_id, word_id: @word_etymology.word_id } }, as: :json
    end

    assert_response 201
  end

  test "should show word_etymology" do
    get word_etymology_url(@word_etymology), as: :json
    assert_response :success
  end

  test "should update word_etymology" do
    patch word_etymology_url(@word_etymology), params: { word_etymology: { etymology_id: @word_etymology.etymology_id, word_id: @word_etymology.word_id } }, as: :json
    assert_response 200
  end

  test "should destroy word_etymology" do
    assert_difference('WordEtymology.count', -1) do
      delete word_etymology_url(@word_etymology), as: :json
    end

    assert_response 204
  end
end
