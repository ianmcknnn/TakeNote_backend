class PagesController < ApplicationController
    def index
        @pages = Page.all.order(:pageNumber)
        render json: @pages
    end

    def show
        @page = Page.find(params[:id])
    end

    def new
        @page = Page.new
    end

    def edit
        @page = Page.find(params[:id])
    end

    def create
        @journal = Journal.find(params[:journalId])
        @page = Page.new(pageContent: params[:pageText], journal_id: params[:journalId], pageNumber: @journal.number)

        if @page.save
            render json: @page
        else
            render json: {err: 'save failed'}
        end
    end

    def update
        @page = Page.find(params[:id])

        if @page.update(pageContent: params[:pageText], label: params[:label])
            render json: @page
        else
            render json: {err: 'update failed'}
        end
    end

    def destroy
        @page = Page.find(params[:id])
        @page.destroy

        redirect_to page_path
    end

    private
        def page_params
            
        end
end
