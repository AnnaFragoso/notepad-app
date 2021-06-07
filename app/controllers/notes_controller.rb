class NotesController < ApplicationController
    #before_action :authenticate_user!
    #protect_from_forgery prepend: true
    skip_before_action :verify_authenticity_token

    def index 
        @notes = Note.where(user_id: current_user.id)
    end

    def create
        @note = Note.new(title: notes_params[:title],
                         note: notes_params[:note],
                         priority: notes_params[:priority],
                         user_id: current_user.id)
        if @note.save
            redirect_to root_url
        else
            render "new"
        end
    end

    def edit
        @note = Note.find_by(id: params[:id])
        puts @note[:title]
    end

    def update
        @note = Note.find_by(id: params[:id])
        if @note.update(notes_params)
            redirect_to root_url
        else
            render "edit"
        end
    end

    def destroy
        @note = Note.find_by(id: params[:id])
        if @note.destroy
            redirect_to root_url
        else
            render "new"
        end
    end
    
    private

    def notes_params
        params.require(:notes).permit(:title, :note, :priority)
    end
end
