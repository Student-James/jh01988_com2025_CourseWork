require 'test_helper'

class AlbumTest < ActiveSupport::TestCase

  test 'Should not save duplicate title album' do
    album1 = Album.new
    album1.artist = 'Duplicate artist'
    album1.title = 'Dublicate title'
    album1.save
    assert album1.valid?

    album2 = Album.new
    album2.artist = 'Duplicate artist'
    album2.title = 'Dublicate title'
    album2.save
    refute  album2.valid?
  end
  test 'Should save valid album' do
    validAlbum = Album.new
    validAlbum.artist = 'Valid Artist'
    validAlbum.title = 'Valid Title'

    validAlbum.save
    assert validAlbum.valid?
  end

  test 'Should not save empty album' do
    emptyAlbum = Album.new

    emptyAlbum.save
    refute emptyAlbum.valid?
  end

end
