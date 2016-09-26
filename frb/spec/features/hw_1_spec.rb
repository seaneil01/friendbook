require "rails_helper"

show_tests_in_browser = true
do_not_show_tests_in_browser = false

feature "Homework 1:", js: do_not_show_tests_in_browser do

  scenario "user authentication required for likes page", points: 1 do
    visit "/404.html"

    expect(page).to have_link(nil, href: "/photos/new")
    # expect(page).to have_selector("form", count: 1)
    # expect(page).to have_selector("label", text: "Email")
    # expect(page).to have_selector("label", text: "Password")
    # expect(page).to have_selector("input[type=submit][value='Log in']")
    # expect(page).not_to have_selector("h1", text: "Likes")
    # expect(page).not_to have_link("New Like")
    # expect(page).to have_content("Signed in successfully.")
    # within("nav") {
    #   expect(page).to have_link(user.username, href: "/users/edit")
    #   expect(page).to have_link(nil, href: "/users/sign_out")
    #   expect(page).not_to have_link("Dummy Sign Out Link")
    # }
  end


end


