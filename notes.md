<----Cruntch time for project what's left?---->

[x] use ruby on rails framework

[x] model relationship requirements

[x] model validations to protect against bad/invalid data

[x] included a ActiveRecord Scope method
    [x] is that method chainable? (did you use AR query methods within it like #.where and #.order?)
    Use these over native Ruby methods like #.find_all or #.sort

[x] app provides standard user auth. including signup, login, logout and passwords

[x] Omniauth to allow login from another service ^

[x] must include and make use of a nested resource with the appropriate RESTful URLs
    [x] must include a nested new route with form that relates to the parent resource
    [x] You must include a nested index or show route

[x] forms should correctly display validation errors
    [x] fields should be enclosed within a fieldswitherrors class
    [x] error messages describing the validation failures must be present within the view

[x] DRY within reason
    [x] logic present within your controllers should be encapsulated as methods in your models
    [x] views should use helper methods and partials when appropriate

[x] NO Scaffolding
