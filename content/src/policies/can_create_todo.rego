package todoApp.can_create_todo

# This policy determines whether the user can create a todo

import future.keywords.in
import input.user

default allowed = false

allowed {
	allowedRoles := {"editor", "admin"}
	some x in allowedRoles
	user.properties.roles[_] == x
}

