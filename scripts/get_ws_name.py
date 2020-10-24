from i3ipc import Connection, Event





if __name__ == "__main__":
    i3 = Connection()

    focused = i3.get_tree().find_focused()
    name = focused.workspace().name
    i = 0
    while i < len(name):
        if name[i] == ':':
            break
        i += 1
    print(name[i+1:])
