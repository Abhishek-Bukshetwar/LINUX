#!/bin/bash
todo_file="todo.txt"
echo "1. Add Task"
echo "2. View Tasks"
echo "3. Remove Task"
read -p "Choose an option: " option

case $option in
  1) read -p "Enter task: " task
     echo "$task" >> "$todo_file"
     echo "Task added."
     ;;
  2) cat "$todo_file"
     ;;
  3) sed -i "${task_number}d" "$todo_file"
     echo "Task removed."
     ;;
  *) echo "Invalid option." ;;
esac

