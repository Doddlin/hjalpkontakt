class FbgroupsController < ApplicationController

    def new
        @fbgroup = Fbgroup.new()
        @fbgroups = Fbgroup.all

    end
    
    def edit
        @fbgroup = Fbgroup.find(params[:id])
        @fbgroups = Fbgroup.all
    end

    def update
        @fbgroup = Fbgroup.find(params[:id])
        @fbgroup.update(fbgroup_params)
        redirect_to root_url
    end

    def create
        @fbgroup = Fbgroup.new(fbgroup_params)
        @fbgroup.save
        redirect_to root_url
    end

    def destroy
    end

    private

    def fbgroup_params
        params.require(:fbgroup).permit(:name, :url, :adminemail)
    end

end
