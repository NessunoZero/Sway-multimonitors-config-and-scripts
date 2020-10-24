from i3ipc import Connection, Event

def get_num(workspace):
    name = workspace.name
    i = 0
    while i < len(name):
        if name[i] == ':':
            break
        i += 1
    return name[:i]



if __name__ == "__main__":
    i3 = Connection()

    focused = i3.get_tree().find_focused()
    workspace = focused.workspace()

    print(get_num(workspace))
