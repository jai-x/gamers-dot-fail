# frozen_string_literal: true

# Monkeypatch of Integer class to add #ordinalize method
class Integer
  def ordinalize
    return "#{self}th" if digits.at(1) == 1

    case digits.first
    when 1
      "#{self}st"
    when 2
      "#{self}nd"
    when 3
      "#{self}rd"
    else
      "#{self}th"
    end
  end
end

# Monkeypatch of Date class to add #ordinalize method
class Date
  def ordinalize
    strftime("%A #{day.ordinalize} %B %Y")
  end
end
