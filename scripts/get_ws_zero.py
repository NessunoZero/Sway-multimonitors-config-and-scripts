from i3ipc import Connection, Event





if __name__ == "__main__":
    i3 = Connection()

    focused = i3.get_tree().find_focused()
    name = focused.workspace().name
    i = 0
    if name[0]=="0":
        print(0)
