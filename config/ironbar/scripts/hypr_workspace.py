#!/usr/bin/env python3
import os
import socket
import sys
import subprocess
import json

WORKSPACE_MAP = {
    1: "Home",
    2: "Web",
    3: "Editor",
    4: "Settings",
    5: "Second Web",
    6: "Slideshow",
    7: "System monitor",
    8: "Discord",
    9: "Media"
}

def get_ws_name():
    try:
        res = subprocess.check_output(["hyprctl", "activeworkspace", "-j"])
        data = json.loads(res.decode("utf-8"))
        ws_id = data.get("id", 1)
        return WORKSPACE_MAP.get(ws_id, f"Workspace {ws_id}")
    except Exception:
        return "Unknown"

def main():
    print(get_ws_name())
    sys.stdout.flush()

    his = os.environ.get("HYPRLAND_INSTANCE_SIGNATURE")
    if not his:
        return

    xdg_runtime = os.environ.get("XDG_RUNTIME_DIR", f"/run/user/{os.getuid()}")
    socket_path = f"{xdg_runtime}/hypr/{his}/.socket2.sock"
    
    with socket.socket(socket.AF_UNIX, socket.SOCK_STREAM) as s:
        s.connect(socket_path)
        buffer = ""
        while True:
            data = s.recv(4096).decode("utf-8")
            if not data:
                break
            buffer += data
            while "\n" in buffer:
                line, buffer = buffer.split("\n", 1)
                if line.startswith("workspace>>") or line.startswith("focusedmon>>"):
                    print(get_ws_name())
                    sys.stdout.flush()

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        pass
