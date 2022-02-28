class ActivitiesController < ApplicationController
    def index
        render json: Activity.all
    end

    def destroy
        activitiy = Activity.find_by(id: params[:id])
        if activitiy
            activitiy.destroy
            head :no_content
        else
            render json: {error: "Activity not found"}, status: 404
        end
    end
end
