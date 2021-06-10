module ApplicationHelper

    def current_class?(test_path)
        return 'active nav-link' if request.path == test_path
        'nav-link'
        
    end
end
