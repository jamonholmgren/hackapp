class ClockScreenStylesheet < ApplicationStylesheet
  # Add your view stylesheets here. You can then override styles if needed,
  # example: include FooStylesheet

  def setup
    # Add stylesheet specific setup stuff here.
    # Add application specific setup stuff in application_stylesheet.rb
  end

  def root_view(st)
    st.background_color = color.white
  end

  def label(st)
    st.size_to_fit
    st.frame = { t: 300, l: 10, fr: 10, h: 50, centered: :horizontal }
    st.background_color = color.battleship_gray
    st.color = color.white
  end

  def input_field(st)
    st.frame = { bp: 20, w: 200, h: 50, centered: :horizontal }
    st.background_color = color.tint
  end
end
