class ClassMembersController < ApplicationController
    def index 
        members = members.all
        render json: members
    end
end
