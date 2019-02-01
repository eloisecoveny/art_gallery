require("minitest/autorun")
require("minitest/rg")
require_relative("../Exhibit")
require_relative("../Artist")

class TestExhibit < MiniTest::Test

  def setup
    @artist = Artist.new({"name" => "Tracy Emin", "born" => "1963", "biography" => "Tracy Emin is an English artist known for her autobiographical and confessional artwork"})

    @exhibit = Exhibit.new({"title" => "Terribly Wrong", "subtitle" => "Diaries of a Liar", "opening" => "19 February 2019", "closing" => "31 March 2019", "description" => "Emin's monoprints have a diaristic aspect and frequently depict events from the past.", "artist_id" => @artist.id, "category" => "performance"})
  end

  def test_get_title
    assert_equal("Terribly Wrong", @exhibit.title)
  end

  def test_get_subtitle
    assert_equal("Diaries of a Liar", @exhibit.subtitle)
  end

  def test_get_opening_date
    assert_equal("19 February 2019", @exhibit.opening)
  end

  def test_get_closing_date
    assert_equal("31 March 2019", @exhibit.closing)
  end

  def test_get_description
    assert_equal("Emin's monoprints have a diaristic aspect and frequently depict events from the past.", @exhibit.description)
  end

  def test_get_category
    assert_equal("performance", @exhibit.category)
  end



end
