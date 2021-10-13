class MedRandomTestsController < ApplicationController
  # GET /random_tests
  def index
    @tests = Test.where("etymos_version_test = 'med'").limit(5).order("RANDOM()")

    render json: @tests
  end
end
