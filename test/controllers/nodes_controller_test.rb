require 'test_helper'

class NodesControllerTest < ActionController::TestCase
  setup do
    @node = nodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create node" do
    assert_difference('Node.count') do
      post :create, node: { description: @node.description, is_borrowable: @node.is_borrowable, is_in_storage: @node.is_in_storage, is_sellable: @node.is_sellable, picture: @node.picture, title: @node.title, url: @node.url }
    end

    assert_redirected_to node_path(assigns(:node))
  end

  test "should show node" do
    get :show, id: @node
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @node
    assert_response :success
  end

  test "should update node" do
    patch :update, id: @node, node: { description: @node.description, is_borrowable: @node.is_borrowable, is_in_storage: @node.is_in_storage, is_sellable: @node.is_sellable, picture: @node.picture, title: @node.title, url: @node.url }
    assert_redirected_to node_path(assigns(:node))
  end

  test "should destroy node" do
    assert_difference('Node.count', -1) do
      delete :destroy, id: @node
    end

    assert_redirected_to nodes_path
  end
end
