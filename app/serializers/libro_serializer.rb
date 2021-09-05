class LibroSerializer
    include FastJsonapi::ObjectSerializer
    
    attributes :name, :id
  
    belongs_to :autor
  end