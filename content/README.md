# policy-todo-authzen

A policy for the AuthZEN "Todo" interop scenario.

## Directory structure

`src` contains all the policy files.

`src/.manifest` contains the policy roots - in this case, `policies` and `todoApp`. If you change the name of the `package` definitions in the `.rego` files, make sure that the first component of the package name is reflected in this list.

`src/policies` contains the policy modules associated with the peoplefinder sample:

* can_create_todo.rego - package `todoApp.can_create_todo` - policy for `POST /todo`
* can_delete_todo.rego - package `todoApp.can_delete_todo` - policy for `DELETE /todo/{ownerID}`
* can_read_todos.rego - package `todoApp.can_read_todos` - policy for `GET /todos`
* can_read_user.rego - package `todoApp.can_read_user` - policy for `GET /user/{userID}`
* can_update_todo.rego - package `todoApp.can_update_todo` - policy for `PUT /todo/{ownerID}`

## Releasing a new version

`git tag {version} && git push --tags` will invoke the actions to create a new release (a policy bundle that can be delivered to the Aserto authorizer)

e.g. `git tag v0.0.1 && git push --tags` will create a new release with v0.0.1.
