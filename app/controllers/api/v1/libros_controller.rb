module Api
  module V1
    class LibrosController < ApiController
      before_action :authenticate, only: %i[create update destroy] 





      # GET /api/v1/libros
      def index
        render json: serializer(Libro.all, options)
      end
      
      # GET /api/v1/libros/:slug
      def show
        render json: serializer(libro, options)
      end

      # POST /api/v1/libros
      def create
        libro = libro.new(libro_params)

        if libro.save
          render json: serializer(libro)
        else
          render json: errors(libro), status: 422
        end
      end

      # PATCH /api/v1/libros/:slug
      def update
        libro = libro.find_by(slug: params[:slug])

        if libro.update(libro_params)
          render json: serializer(libro, options)
        else
          render json: errors(libro), status: 422
        end
      end

      # DELETE /api/v1/libros/:slug
      def destroy
        if libro.destroy
          head :no_content
        else
          render json: errors(libro), status: 422
        end
      end

      private

      # Used For compound documents with fast_jsonapi
      def options
        @options ||= { }
      end

      # Get all libros
      def libros
        @libros ||= Libro.all
      end

      # Get a specific libro
      def libro
        @libro ||= Libro.find_by(id: params[:id])
      end

      # Strong params
      def libro_params
        params.require(:libro).permit(:name, :image_url)
      end

      # fast_jsonapi serializer
      def serializer(records, options = {})
          LibroSerializer
          .new(records, options)
          .serialized_json
      end

      # Errors
      def errors(record)
        { errors: record.errors.messages }
      end
    end
  end
end
