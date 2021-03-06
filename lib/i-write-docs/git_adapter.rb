module IWriteDocs
  class GitAdapter
    include Singleton

    attr_reader :tags
      
    def initialize
      @repo = Rugged::Repository.discover(IWriteDocs.config.documentation_path)
      @master_oid = @repo.ref('refs/heads/master').target.oid
      build_tags_hash
    end

    def get_file_content(file_path, current_tag = nil)
      oid = current_tag.to_s.empty? ? @master_oid : @tags[current_tag]
      @repo.blob_at(oid, file_path).content
    end

    def get_diff_for(file_path, tag, current_tag = nil)
      tag_blob = @repo.blob_at(@tags[tag], file_path)
      current_tag_oid = current_tag ? @tags[current_tag] : @master_oid
      current_blob = @repo.blob_at(current_tag_oid, file_path)
      current_blob.diff(tag_blob, {new_path: file_path.split('/').last}).to_s
    end

  private
  
    def tag_exist?(tag)
      !!@tags[tag]
    end

    def build_tags_hash
      @tags = {}
      @repo.tags.each { |t| @tags.merge!({t.name => t.target.oid}) }
    end
 
  end
end
