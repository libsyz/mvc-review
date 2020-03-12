require_relative 'notes_repository'    # You need to create this file!
require_relative 'controller'  # You need to create this file!
require_relative 'router'

CSV_FILE = File.join(File.dirname(__FILE__), 'notes.csv')
cookbook = NotesRepository.new(CSV_FILE)
controller = Controller.new(cookbook)

router = Router.new(controller)

# Start the app
router.run
