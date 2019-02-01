require("minitest/autorun")
require("minitest/rg")
require_relative("../Artist")

class TestArtist < MiniTest::Test

  def setup
    @artist = Artist.new({"name" => "Tracy Emin", "born" => "1963", "biography" => "Tracy Emin is an English artist known for her autobiographical and confessional artwork"})
  end

  def test_get_name
    assert_equal("Tracy Emin", @artist.name)
  end

  def test_get_year_born
    assert_equal("1963", @artist.born)
  end

  def test_get_biography
    assert_equal("Tracy Emin is an English artist known for her autobiographical and confessional artwork", @artist.biography)
  end

end
