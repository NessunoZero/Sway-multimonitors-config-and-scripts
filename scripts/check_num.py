from i3ipc import Connection, Event
import get_ws_num
import sys

num = sys.argv[1]

if __name__ == "__main__":
    i3 = Connection()
    
    workspaces = i3.get_workspaces()
    for wp in workspaces:
        if num == get_ws_num.get_num(wp):
            print("False")
    
