import tkinter as tk
from tkinter import messagebox
import mysql.connector
from datetime import date

def db_connect():
    return mysql.connector.connect(
        host="localhost",
        user="root",
        password="yourpassword",
        database="teacher_resource_hub"
    )

def mark_attendance():
    student_id = entry_id.get()
    status = var_status.get()

    conn = db_connect()
    cursor = conn.cursor()
    cursor.execute("INSERT INTO attendance (student_id, date, status) VALUES (%s, %s, %s)",
                   (student_id, date.today(), status))
    conn.commit()
    conn.close()
    messagebox.showinfo("Success", f"Attendance marked for Student ID {student_id}")
