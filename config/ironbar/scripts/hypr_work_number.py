#!/usr/bin/env python3
import os
import socket
import sys
import subprocess
import json

def get_ws_num():
    try:
        res = subprocess.check_output(["hyprctl", "activeworkspace", "-j"])
        data = json.loads(res.decode("utf-8"))
        return data.get("id", "?")
    except Exception:
        return "?"

def main():
    # Print initial state for Ironbar immediately on startup
    print(get_ws_num())
    sys.stdout.flush()

    his = os.environ.get("HYPRLAND_INSTANCE_SIGNATURE")
    if not his:
        return

    # Use XDG_RUNTIME_DIR to match modern Hyprland behavior
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
                    print(get_ws_num())
                    sys.stdout.flush()

if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt:
        pass
