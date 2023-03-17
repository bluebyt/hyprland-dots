function fish_right_prompt
    if test $CMD_DURATION
            # Show notification if dration is more than 30 seconds
            if test $CMD_DURATION -gt 1000
                # Show duration of the last command in seconds
                set duration (echo "$CMD_DURATION 1000" | awk '{printf "%.3fs", $1 / $2}')
                notify-send (echo (history | head -1) returned $status after $duration)
            end
        end
end
