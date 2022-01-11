class AgentsController < ApplicationController
    def index
        @agents = Agent.all
      end

      def show
      @agent = Agent.find(params[:id])
      end

      def new 
        @agent = Agent.new
      end

      def create
      @agent = Agent.create(agent_params)
      @agent.save

      end

      def edit 
        @agent = Agent.find(params[:id])
        
      end

      def update 
        @agent = Agent.find(params[:id])
        @agent.update(agent_params)
        redirect_to agent_path(agent)
      end

      private

      def agent_params
        params.require(:agent).permit(:name, :photo, :rating)
      end

    end