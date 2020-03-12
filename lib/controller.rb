require_relative "view"
require_relative "note"

class Controller
  def initialize(note_repo)
    @note_repo = note_repo
    @view = View.new
  end

  # USER ACTIONS

  def list
    all_notes = @note_repo.all
    @view.display(all_notes)
  end

  def create
    # 1. Ask user for a title body(view) - done
    title = @view.ask_user_for('title')
    body = @view.ask_user_for('body')
    # 2. Ask user for a note body (view) - done
    # 3. Create note (model)
    note = Note.new(title: title, body: body)
    # 4. Store in note repository (repo)
    @note_repo.add_note(note)
    list
  end

  def destroy
    # 1. Display notes
    # 2. Ask user for index (view)
    # 3. Remove from note repository (repo)
    # 4. Display
  end

  private

  def display_notes
    # 1. Get notes (repo)
    # 2. Display notes in the terminal (view)
  end
end
