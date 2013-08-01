json.array!(@trees) do |tree|
  json.extract! tree, :title, :picture, :node_id, :tree_type
  json.url tree_url(tree, format: :json)
end
