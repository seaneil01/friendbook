require "rails_helper"

show_tests_in_browser = true
do_not_show_tests_in_browser = false

feature "HTML page (raw content, semantic markup, images):", js: do_not_show_tests_in_browser do
  before :each do
    visit "/first-assignment.html"
  end

  scenario "<body> element has text (hopefully some Raw Content added)", points: 1 do
    expect(page.find("body").text).not_to eq("")
  end

  scenario "has a title", points: 1 do
    expect(page.title).not_to eq nil
    expect(page.title).not_to eq ""
  end

  scenario "includes some semantic links (you should have more, but this test only looks for a link, paragraph, and list item)", points: 3 do
    expect(page).to have_selector("a")
    expect(page).to have_selector("p")
    expect(page).to have_selector("li")
  end

  scenario "includes at least four images", points: 2 do
    expect(page).to have_selector("img", :minimum => 4)
  end
end

feature "HTML page (tables, embedding, styling with css):", js: do_not_show_tests_in_browser do
  before :each do
    visit "/first-assignment.html"
  end

  scenario "has <table>, <tr>, <th>, and <td> elements", points: 2 do
    expect(page).to have_selector("table")
    expect(page).to have_selector("tr")
    expect(page).to have_selector("th")
    expect(page).to have_selector("td")
  end

  scenario "has Google Maps, Vine, and Youtube <iframe> embeds", points: 1 do
    expect(page).to have_selector("iframe", :minimum => 3)
    expect(page).to have_css("iframe[src*='google']")
    expect(page).to have_css("iframe[src*='vine']")
    expect(page).to have_css("iframe[src*='youtube']")
  end
end
