require "rails_helper"

show_tests_in_browser = true
do_not_show_tests_in_browser = false

feature "HTML page:", js: do_not_show_tests_in_browser do
  before :each do
    visit "/first-assignment.html"
  end

  # IGNORE BECAUSE NEXT TEST DOESN'T ALWAYS WORK
  # scenario "page is not empty", points: 1 do
  #   expect(page).to have_content
  # end

  # SOMETIMES DOES NOT WORK BECAUSE ELEMENTS SEEM TO BE FILLED IN AUTOMATICALLY IF A FILE ONLY CONTAINS TEXT OR CERTAIN ELEMENTS
  # scenario "contains some basic html structure", points: 1 do
  #   expect(page).to have_selector("html")
  #   expect(page).to have_selector("body")
  # end

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


end



    # expect(page).to have_selector("form", count: 1)
    # expect(page).to have_selector("label", text: "Email")
    # expect(page).to have_selector("input[type=submit][value='Log in']")
    # expect(page).to have_content("Signed in successfully.")
    # within("nav") {
    #   expect(page).to have_link(user.username, href: "/users/edit")
    #   expect(page).to have_link(nil, href: "/users/sign_out")
    #   expect(page).not_to have_link("Dummy Sign Out Link")
    # }


