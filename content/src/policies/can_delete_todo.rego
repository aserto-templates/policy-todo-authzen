package todoApp.can_delete_todo

# This policy determines whether the user can delete the todo owned by input.resource.ownerID

import input.resource
import input.user

default allowed = false

allowed {
	user.properties.roles[_] == "editor"
	user.id == resource.ownerID
}

allowed {
	user.properties.roles[_] == "admin"
}