helpers do
  # trims text to a word boundary less than or equal to length
  # uses interpolated regex to handle dynamic trim length
  # appends ' ...' to trimmed text
  def trim_to(text, length=70)
    return text if text.length < length
    matched_txt = text.match(%r[(.{#{length},}?\b).*])
    matched_txt[1] + ' ...'
  end
end