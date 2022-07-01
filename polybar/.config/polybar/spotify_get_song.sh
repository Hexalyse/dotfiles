PLAYERCTL_STATUS=$(playerctl -p spotify metadata --format "{{ artist }} - {{ title }}" 2>/dev/null)
EXIT_CODE=$?

if [ $EXIT_CODE -eq 0 ]; then
    STATUS=$PLAYERCTL_STATUS
else
    STATUS="No player is running"
fi

echo $STATUS
