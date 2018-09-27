class Alouette
  @all_vers = ['la tête', 'le bec', 'les yeux', 'le cou',
               'les ailes', 'les pattes', 'la queue',
               'le dos']

  @refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."

  def self.lines_for_verse(verse_num)
    lines = []
    @all_vers[0..verse_num].each do |verse|
      # insert each element into front of array
      lines.unshift("Et #{verse}!")
    end

      return lines
  end

  def self.verse(verse_num)
    verse = ""
    x = lines_for_verse(verse_num)
    x.each do |i|
      verse << "#{i}\n" * 2
    end

    full_verse = "Je te plumerai #{@all_vers[verse_num]}.\n" * 2 \
                  + verse \
                  + "Alouette!\nAlouette!\nA-a-a-ah"

    return full_verse
  end

  def self.sing
    song = ''
    @all_vers.each_with_index do |_, i|
      song << "#{@refrain}\n\n" + Alouette.verse(i) + "\n\n"
    end

    return song + "#{@refrain}"
  end
end
