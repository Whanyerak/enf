module EventDecorator
  def box
    tag.div(class: 'event') do
      name + details
    end
  end

  def name
    tag.h3(title)
  end

  def details
    tag.ul do
      date + where
    end
  end

  def date
    tag.li do
      octicon("calendar") + " " +
      l(happen_on, format: :long).capitalize
    end
  end

  def where
    unless place.blank?
      tag.li do
        octicon("location") + " " + place
      end
    else
      ""
    end
  end
end
