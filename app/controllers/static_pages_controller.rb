class StaticPagesController < ApplicationController
    before_filter :authenticate_user!
    def schedule
    end
    def about
    end
    def help
    end
end
