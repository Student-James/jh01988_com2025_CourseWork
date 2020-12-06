require 'test_helper'

class TrackTest < ActiveSupport::TestCase

  setup do
    @album = albums(:one)
  end

  test 'Should save valid track' do
    validTrack = Track.new
    validTrack.title = "Valid track test title"
    validTrack.album = @album
    validTrack.save
    assert validTrack.valid?
  end

  test 'Should not save empy track' do
    emptyTrack = Track.new
    emptyTrack.save
    refute emptyTrack.valid?
  end

end
