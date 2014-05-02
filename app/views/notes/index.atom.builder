atom_feed do |feed|
  feed.title "Kremlin Notes"
  feed.updated @notes.maximum(:updated_at)
  @notes.each do |note|
    feed.entry note, published: note.created_at do |entry|
      entry.title note.title
      entry.content note.thought
      entry.author do |author|
        author.name note.user.full_name.titleize
      end
    end
  end
end