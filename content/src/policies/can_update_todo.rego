package todoApp.can_update_todo

# This policy determines whether the user can complete a specific todo owned by input.resource.ownerID

import input.resource
import input.user

default allowed = false

allowed {
	user.properties.roles[_] == "editor"
	user.id == resource.properties.ownerID
}

allowed {
	user.properties.roles[_] == "evil_genius"
}