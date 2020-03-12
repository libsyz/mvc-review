require "csv"
require_relative "note"

class NotesRepository
  def initialize(csv_file)
    @notes = [] # <--- <Recipe> instances
    @csv_file = csv_file
    load_csv
  end

  def add_note(note)
    @notes << note
    save_to_csv
  end

  def remove_at(index)
  end

  def all
    @notes
    # does not do anything yet
  end

  private

  def save_to_csv
    CSV.open(@csv_file, 'w') do |csv|
      @notes.each do |note|
        csv << [note.title, note.body]
      end
    end
  end

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row ) do |row|
      @notes << Note.new(title: row[0], body: row[1])
    end
  end
end
