class NotesController < ApplicationController

    skip_before_action :verify_authenticity_token

    def index 
        @notes = Note.all
    end

    def new
        
    end

    def create
        @note = Note.new(title: notes_params[:title],
                         note: notes_params[:note],
                         priority: notes_params[:priority],
                         user_id: 5)
        @note.save
    end

    def notes_params
        params.require(:notes).permit(:title, :note, :priority)
    end
end
