class DemoController < ApplicationController
  
  layout "demo"

  def index
    @user_entered_data = "Sorry!'); alert('I hacked you!"
  end

  def text_helpers
    @text = """
            This is some long sample text. 
            It includes line breaks\nand double-line breaks.\n\n
            It rambles on and on and on.\n\n Until we get to this last line.
          """

  end

  def number_helpers
  end

  def sanitize
    @text = """
              <p>
                <strong>This is a string</strong> with various HTML <em>tags</em> and 
                <a href=\"#\">links</a> included inside
              </p>
              <script>alert(\"Hello there\")</script>
            """
  end
end
