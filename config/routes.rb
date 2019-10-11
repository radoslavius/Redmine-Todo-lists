RedmineApp::Application.routes.draw do
    scope "projects/:project_id/todos" do
        get "list/index", to: 'todo_list#index'
        post "list/save_order", to: 'todo_list#save_order'
        post "list/", to: 'todo_list#create'
        post "list/:id", to: 'todo_list#update'
        delete "list/:id", to: 'todo_list#delete'
        post "item/", to: 'todo_item#create'
        post "item/:id", to: 'todo_item#update'
        delete "item/:id", to: 'todo_item#delete'
        post "item/toggle/:id", to: 'todo_item#toggle'
    end
end
