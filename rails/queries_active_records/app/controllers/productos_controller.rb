class ProductosController < ApplicationController
  before_action :set_producto, only: [:show, :edit, :update, :destroy]

  # GET /productos
  # GET /productos.json
  def index
    @productos = Producto.all # SELECT * FROM producto
    #@productos = Producto.find(10) #encontrar por ID
    #@productos = Producto.take(10) #SELECT * FROM tabla limit 10
    #@productos = Producto.first #Primer registro
    #@productos = Producto.last  #Último registro
    #@productos = Producto.find_by_color("blanco") #SELECT * FROM producto WHERE color = "blanco"
    #@productos = Producto.where(talla: ["s", "l"]) #SELECT * FROM producto WHERE color = "blanco" OR talla = "l"
    #@productos = Producto.where.not(talla: ["s", "l"]) #?
    #@productos = Producto.where.not(talla: ["s", "l"]) #?
    #@productos = Producto.order(precio: :asc) #SELECT * FROM producto ORDER BY  precio ASC
    #@productos = Producto.select(:costo, :precio) #SELECT producto.costo, producto.precio FROM producto
    #@productos = Producto.limit(5).offset(10)
    #@productos = Producto.limit(5).offset(10)
    #@productos = Producto.group(:talla)
    #@productos = Producto.group(:tipo).having("sum(precio) < ?", 2800000)
    # SELECT * FROM producto WHERE SUM(precio) > 2800000 GRUOP BY tipo
    #@productos = Producto.all.readonly !important security!
    #@productos = Producto.includes(:categoria).limit(10) #? Relaciones
    #@productos = Producto.where("cantidad > ? AND tipo = ?", 100, "hombre")
    #@productos = Producto.where("descripcion like  ? ",  "%niño%")
    #pluck, sum, minimum, maximum, average

  end

  # GET /productos/1
  # GET /productos/1.json
  def show
  end

  # GET /productos/new
  def new
    @producto = Producto.new
  end

  # GET /productos/1/edit
  def edit
  end

  # POST /productos
  # POST /productos.json
  def create
    @producto = Producto.new(producto_params)

    respond_to do |format|
      if @producto.save
        format.html { redirect_to @producto, notice: 'Producto was successfully created.' }
        format.json { render :show, status: :created, location: @producto }
      else
        format.html { render :new }
        format.json { render json: @producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productos/1
  # PATCH/PUT /productos/1.json
  def update
    respond_to do |format|
      if @producto.update(producto_params)
        format.html { redirect_to @producto, notice: 'Producto was successfully updated.' }
        format.json { render :show, status: :ok, location: @producto }
      else
        format.html { render :edit }
        format.json { render json: @producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productos/1
  # DELETE /productos/1.json
  def destroy
    @producto.destroy
    respond_to do |format|
      format.html { redirect_to productos_url, notice: 'Producto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto
      @producto = Producto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_params
      params.require(:producto).permit(:referencia, :color, :talla, :categoria, :ripo, :marca, :descripcion, :tela, :cantidad, :costo, :precio)
    end
end
