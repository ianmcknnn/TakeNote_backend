class PagesController < ApplicationController
    def index
        @pages = Page.all
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
        @page = Page.new(page_params)

        if @page.save
            render json: @page
        else
            render json: {err: 'save failed'}
        end
    end

    def update
        @page = Page.find(params[:id])

        if @page.update(page_params)
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
            params.require(:pageNumber).permit(:label)
        end
end
