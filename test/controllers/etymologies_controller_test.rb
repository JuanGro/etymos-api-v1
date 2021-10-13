require 'test_helper'

class EtymologiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @etymology = etymologies(:one)
  end

  test "should get index" do
    get etymologies_url, as: :json
    assert_response :success
  end

  test "should create etymology" do
    assert_difference('Etymology.count') do
      post etymologies_url, params: { etymology: { graeco_latin_etymology: @etymology.graeco_latin_etymology, image_etymology: @etymology.image_etymology, language: @etymology.language, meaning_etymology: @etymology.meaning_etymology, pattern: @etymology.pattern, type_etymology: @etymology.type_etymology } }, as: :json
    end

    assert_response 201
  end

  test "should show etymology" do
    get etymology_url(@etymology), as: :json
    assert_response :success
  end

  test "should update etymology" do
    patch etymology_url(@etymology), params: { etymology: { graeco_latin_etymology: @etymology.graeco_latin_etymology, image_etymology: @etymology.image_etymology, language: @etymology.language, meaning_etymology: @etymology.meaning_etymology, pattern: @etymology.pattern, type_etymology: @etymology.type_etymology } }, as: :json
    assert_response 200
  end

  test "should destroy etymology" do
    assert_difference('Etymology.count', -1) do
      delete etymology_url(@etymology), as: :json
    end

    assert_response 204
  end
end
