require 'test_helper'

class ReviewTest < ActiveSupport::TestCase
  setup do
    @album = albums(:one)
  end

  test 'Should save valid review' do
    validReview = Review.new
    validReview.reviewtitle = "Valid review test title"
    validReview.reviewbody = "Valid review body test"
    validReview.album = @album
    validReview.save
    assert validReview.valid?
  end

  test 'Should not save empy review' do
    emptyReview = Review.new
    emptyReview.save
    refute emptyReview.valid?
  end
end
