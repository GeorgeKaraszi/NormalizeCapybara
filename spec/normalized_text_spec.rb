# frozen_string_literal: true

RSpec.describe "Normalize Text", type: :feature do
  let :string do
    Capybara.string <<-STRING
        <html>
          <head>
            <title>simple_node</title>
          </head>
          <body>
            <svg><title>not document title</title></svg>
            <div id="page">
              <div id="content">
                <h1 data="fantastic">Totally awesome</h1>
                <p>Yes it is</p>
              </div>
              <form>
                <input type="text" name="bleh" disabled="disabled"/>
                <input type="text" name="meh"/>
              </form>
              <div id="footer">
                <p>c2010</p>
                <p>Jonas Nicklas</p>
                <input type="text" name="foo" value="bar"/>
                <select name="animal">
                  <option>Monkey</option>
                  <option selected="selected">Capybara</option>
                </select>
              </div>
              <div id="hidden" style="display: none">
                <p id="secret">Secret</p>
              </div>
              <section>
                <div class="subsection"></div>
              </section>
            </div>
          </body>
        </html>
    STRING
  end

  it "has a version number" do
    expect(string).to have_content("Totally awesome Yes it is")
  end
end
