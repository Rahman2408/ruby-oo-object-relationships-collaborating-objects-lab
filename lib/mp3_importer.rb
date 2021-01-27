class MP3Importer
    attr_reader :path

    def initialize(path)
      @path = path
    end
    
    def files
       Dir.glob("#{path}/*.mp3").map{|a| a.gsub("#{path}/", "")}
    end
  
    def import
        files.each {|a| Song.new_by_filename(a)}
    end
end 
    