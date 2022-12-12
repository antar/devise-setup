class NotesController < ApplicationController
    def index
        @new_note = Note.new
        @all_notes = Note.where(user_id: current_user.id).order(created_at: :desc).all
      end
      def create
        @new_note = Note.new(comment: note_params["comment"], user_id: current_user.id)
        if @new_note.save
          redirect_to root_path
        end
      end
      private 
        def note_params
          params.require(:note).permit(:comment)
        end
end
