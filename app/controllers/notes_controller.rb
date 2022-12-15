class NotesController < ApplicationController
    def index
        @note = Note.new
        @notes = Note.where(user_id: current_user.id).order(created_at: :desc).all
      end
      def create
        @note = Note.new(comment: note_params["comment"], user_id: current_user.id)
        if @note.save
          redirect_to root_path
        end
      end
      def destroy
        @notes = Note.all
        @notes.destroy_all
        redirect_to root_path
      end
      private 
        def note_params
          params.require(:note).permit(:comment)
        end
end
