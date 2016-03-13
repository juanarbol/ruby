class ChildsController < ApplicationController
	def register_child
		Child.create(child_params).save
		redirect_to childs_path
	end

	def register_mom
		Mom.create(mom_params).save
		redirect_to childs_path
	end

	def show_mom
		@mom = Mom.find(params[:id])
	end
	def show_child
		@child = Child.find(params[:id])
	end

	def index
		#redirect_to childs_register_path
		@childs = Child.all
		@moms = Mom.all
	end
	def mostrar
	end
	def child_params
		params.permit(:nombre, :segundo_nombre, :apellido, :segundo_apellido, :documento, :sexo, :fecha_nacimiento, :nombre_madre, :nombre_padre, :vacunas, :cancer, :hipertension, :diabetes, :enfermedades, :desnutricion, :grupo_sanguinero )
	end
	def mom_params
		params.permit(:nombre, :segundo_nombre, :apellido, :segundo_apellido, :documento, :hijos, :abortos, :problemas, :cancer_ovario, :cancer_mama, :otro_cancer, :grupo_sanguinero )
	end
end
