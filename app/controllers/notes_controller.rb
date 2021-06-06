class NotesController < ApplicationController
    #before_action :authenticate_user!
    #protect_from_forgery prepend: true
    skip_before_action :verify_authenticity_token

    def index 
        @notes = Note.all
    end

    def create
        @note = Note.new(title: notes_params[:title],
                         note: notes_params[:note],
                         priority: notes_params[:priority],
                         user_id: current_user.id)
        @note.save
    end

    def edit
        @note = Note.find_by(id: params[:id])
        puts @note[:title]
    end

    def update
        @note = Note.find_by(id: params[:id])
        @note.update(notes_params)
    end

    def delete
    end
    
    private

    def notes_params
        params.require(:notes).permit(:title, :note, :priority)
    end
end
