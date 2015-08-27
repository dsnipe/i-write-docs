module IWriteDocs
  class DocsTree

    DEFAULT_SOURCE_FOLDER = "source"
    attr_reader :docs_path, :tree
    
    def initialize
      load_env_config
      build_docs_tree
    end

    def load_env_config
      env_doc_path = ENV["DOCUMENTATION_PATH"]
      raise IWriteDocsError.new("DOCUMENTATION_PATH not provided") if env_doc_path.nil?
      @docs_path = env_doc_path
    end

    def build_docs_tree
      docs_config = YAML.load_file("#{@docs_path}/config.yml")
      @tree = Tree::TreeNode.new("ROOT", {root_path: @docs_path, source_path: "#{@docs_path}/#{DEFAULT_SOURCE_FOLDER}"})
      traverse(docs_config, @tree) do |node, parent|
        leaf = node.is_a?(Tree::TreeNode) ? node : Tree::TreeNode.new(node.to_s, prepare_node_content(node, parent))
        parent << leaf
      end
     # rescue Errno::ENOENT
    #   p "YAML config not found"
    # rescue Psych::SyntaxError
    #   p "YAML config file contains invalid syntax"
    end

  private

    def prepare_node_content(node, parent)
      title = node.split("_").map(&:capitalize).join(" ")
      {source_path: "#{parent.content[:source_path]}/#{node}", title: title}
    end
  
    def traverse(obj, parent, &blk)
      case obj
      when Hash
        obj.each do |k,v|
          sub_root = Tree::TreeNode.new(k, prepare_node_content(k, parent))
          blk.call(sub_root, parent)
          traverse(v, sub_root ,&blk)
        end
      when Array
        obj.each { |v| traverse(v, parent, &blk) }
      else
        blk.call(obj, parent)
      end
    end
  end
end