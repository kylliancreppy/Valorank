class WeaponsController < ApplicationController
    def index
        @weapons = Weapon.all
    end

    def show
        @weapon = Weapon.find(params[:id])
      end

      def new
        @weapon = Weapon.new # needed to instantiate the form_for
      end

      def create
        @weapon = Weapon.create(weapon_params)
        @weapon.save
        redirect_to weapons_path(@weapon)
  
        end
  
        def edit 
          @weapon = Weapon.find(params[:id])
          
        end
  
        def update 
          @weapon = Weapon.find(params[:id])
          @weapon.update(weapon_params)
          redirect_to weapon_path(@weapon)
        end
  
        private
  
        def weapon_params
          params.require(:weapon).permit(:name, :price, :photo)
        end
  
end
