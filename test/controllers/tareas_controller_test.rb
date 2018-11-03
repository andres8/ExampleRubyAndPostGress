require 'test_helper'

class TareasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tarea = tareas(:one)
  end

  test "should get index" do
    get tareas_url, as: :json
    assert_response :success
  end

  test "should create tarea" do
    assert_difference('Tarea.count') do
      post tareas_url, params: { tarea: { finalizada: @tarea.finalizada, titulo: @tarea.titulo, usuario_id: @tarea.usuario_id } }, as: :json
    end

    assert_response 201
  end

  test "should show tarea" do
    get tarea_url(@tarea), as: :json
    assert_response :success
  end

  test "should update tarea" do
    patch tarea_url(@tarea), params: { tarea: { finalizada: @tarea.finalizada, titulo: @tarea.titulo, usuario_id: @tarea.usuario_id } }, as: :json
    assert_response 200
  end

  test "should destroy tarea" do
    assert_difference('Tarea.count', -1) do
      delete tarea_url(@tarea), as: :json
    end

    assert_response 204
  end
end
