class ClockScreen < PM::Screen
  title "Clock"
  stylesheet ClockScreenStylesheet

  def on_load
    set_nav_bar_button :right, title: "Fetch", action: :fetch_time
    append(UILabel, :label).data("Hey!")
    append(UITextField, :input_field).on :change do |f|
      find(:label).data(find(f).data)
    end
  end

  def fetch_time
    API.time do |t|
      find(:label).data(t.to_s)
    end
  end

  def on_live_reload
    mp "on_live_reload"
    find(self.view).children.remove
    on_load
  end

end
