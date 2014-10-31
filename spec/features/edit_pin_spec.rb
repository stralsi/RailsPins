require 'spec_helper'

context "editing a pin when not logged in" do
  it "is not possible from the ui"
  it "is not possible from the url"
end

context "editing a pin when logged in as someone else than the pin author" do
  it "is not possible from the ui"
  it "is not possible from the url"
end

context "editing a pin when logged in as the pin author" do
  it "updates the changes"
end
