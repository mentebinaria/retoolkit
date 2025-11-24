import tkinter as tk
from tkinter import ttk, messagebox, filedialog
import json
import os
import webbrowser
import urllib.request
import zipfile
import shutil
import subprocess

class RetoolkitManager:
    def __init__(self, root):
        self.root = root
        self.root.title("Reverse Engineer's Toolkit Manager")
        self.root.geometry("1000x600")
        self.root.minsize(800, 500)
        
        # Set up the main window
        self.setup_ui()
        
        # Load tool data
        self.load_tool_data()
        
        # Load documentation
        self.load_documentation()
        
    def setup_ui(self):
        # Create a notebook for different sections
        self.notebook = ttk.Notebook(self.root)
        self.notebook.pack(fill=tk.BOTH, expand=True, padx=10, pady=10)
        
        # Tool Manager tab
        self.create_tool_manager_tab()
        
        # Documentation tab
        self.create_documentation_tab()
        
        # Update tab
        self.create_update_tab()
        
    def create_tool_manager_tab(self):
        tool_frame = ttk.Frame(self.notebook)
        self.notebook.add(tool_frame, text="Tool Manager")
        
        # Tool category selection
        category_frame = ttk.Frame(tool_frame)
        category_frame.pack(fill=tk.X, padx=5, pady=5)
        
        ttk.Label(category_frame, text="Tool Category: ").pack(side=tk.LEFT, padx=5, pady=5)
        self.category_var = tk.StringVar()
        self.category_combobox = ttk.Combobox(category_frame, textvariable=self.category_var, state="readonly")
        self.category_combobox.pack(side=tk.LEFT, padx=5, pady=5, fill=tk.X, expand=True)
        self.category_combobox.bind('<<ComboboxSelected>>', self.on_category_selected)
        
        # Tool list
        tool_list_frame = ttk.Frame(tool_frame)
        tool_list_frame.pack(fill=tk.BOTH, expand=True, padx=5, pady=5)
        
        # Tool list treeview
        columns = ('name', 'description', 'version')
        self.tool_tree = ttk.Treeview(tool_list_frame, columns=columns, show='headings')
        self.tool_tree.heading('name', text='Tool Name')
        self.tool_tree.heading('description', text='Description')
        self.tool_tree.heading('version', text='Version')
        self.tool_tree.column('name', width=200)
        self.tool_tree.column('description', width=400)
        self.tool_tree.column('version', width=100)
        self.tool_tree.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)
        
        # Scrollbar for tool list
        scrollbar = ttk.Scrollbar(tool_list_frame, orient=tk.VERTICAL, command=self.tool_tree.yview)
        self.tool_tree.configure(yscroll=scrollbar.set)
        scrollbar.pack(side=tk.RIGHT, fill=tk.Y)
        
        # Tool actions
        action_frame = ttk.Frame(tool_frame)
        action_frame.pack(fill=tk.X, padx=5, pady=5)
        
        self.run_button = ttk.Button(action_frame, text="Run Tool", command=self.run_tool)
        self.run_button.pack(side=tk.LEFT, padx=5, pady=5)
        
        self.open_folder_button = ttk.Button(action_frame, text="Open Tool Folder", command=self.open_tool_folder)
        self.open_folder_button.pack(side=tk.LEFT, padx=5, pady=5)
        
    def create_documentation_tab(self):
        doc_frame = ttk.Frame(self.notebook)
        self.notebook.add(doc_frame, text="Documentation")
        
        # Documentation category selection
        doc_category_frame = ttk.Frame(doc_frame)
        doc_category_frame.pack(fill=tk.X, padx=5, pady=5)
        
        ttk.Label(doc_category_frame, text="Documentation Category: ").pack(side=tk.LEFT, padx=5, pady=5)
        self.doc_category_var = tk.StringVar()
        self.doc_category_combobox = ttk.Combobox(doc_category_frame, textvariable=self.doc_category_var, state="readonly")
        self.doc_category_combobox.pack(side=tk.LEFT, padx=5, pady=5, fill=tk.X, expand=True)
        self.doc_category_combobox.bind('<<ComboboxSelected>>', self.on_doc_category_selected)
        
        # Documentation list
        doc_list_frame = ttk.Frame(doc_frame)
        doc_list_frame.pack(fill=tk.BOTH, expand=True, padx=5, pady=5)
        
        # Documentation list treeview
        columns = ('title', 'description', 'type')
        self.doc_tree = ttk.Treeview(doc_list_frame, columns=columns, show='headings')
        self.doc_tree.heading('title', text='Title')
        self.doc_tree.heading('description', text='Description')
        self.doc_tree.heading('type', text='Type')
        self.doc_tree.column('title', width=300)
        self.doc_tree.column('description', width=400)
        self.doc_tree.column('type', width=100)
        self.doc_tree.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)
        
        # Scrollbar for documentation list
        scrollbar = ttk.Scrollbar(doc_list_frame, orient=tk.VERTICAL, command=self.doc_tree.yview)
        self.doc_tree.configure(yscroll=scrollbar.set)
        scrollbar.pack(side=tk.RIGHT, fill=tk.Y)
        
        # Documentation actions
        doc_action_frame = ttk.Frame(doc_frame)
        doc_action_frame.pack(fill=tk.X, padx=5, pady=5)
        
        self.open_doc_button = ttk.Button(doc_action_frame, text="Open Documentation", command=self.open_documentation)
        self.open_doc_button.pack(side=tk.LEFT, padx=5, pady=5)
        
    def create_update_tab(self):
        update_frame = ttk.Frame(self.notebook)
        self.notebook.add(update_frame, text="Auto Update")
        
        # Update status
        status_frame = ttk.Frame(update_frame)
        status_frame.pack(fill=tk.X, padx=5, pady=10)
        
        ttk.Label(status_frame, text="Current Version: ").pack(side=tk.LEFT, padx=5, pady=5)
        self.current_version_label = ttk.Label(status_frame, text="2025.04")
        self.current_version_label.pack(side=tk.LEFT, padx=5, pady=5)
        
        # Check for updates
        check_frame = ttk.Frame(update_frame)
        check_frame.pack(fill=tk.X, padx=5, pady=10)
        
        self.check_update_button = ttk.Button(check_frame, text="Check for Updates", command=self.check_for_updates)
        self.check_update_button.pack(side=tk.LEFT, padx=5, pady=5)
        
        self.update_status_label = ttk.Label(check_frame, text="")
        self.update_status_label.pack(side=tk.LEFT, padx=5, pady=5)
        
        # Update progress
        progress_frame = ttk.Frame(update_frame)
        progress_frame.pack(fill=tk.X, padx=5, pady=10)
        
        self.progress_bar = ttk.Progressbar(progress_frame, mode='indeterminate')
        self.progress_bar.pack(fill=tk.X, padx=5, pady=5)
        
        # Update button
        self.update_button = ttk.Button(progress_frame, text="Install Update", command=self.install_update, state=tk.DISABLED)
        self.update_button.pack(side=tk.LEFT, padx=5, pady=5)
        
    def load_tool_data(self):
        # Load tool data from JSON file
        try:
            with open('tools.json', 'r', encoding='utf-8') as f:
                self.tool_data = json.load(f)
        except FileNotFoundError:
            # Fallback to hardcoded data if JSON file is not found
            self.tool_data = {
                "Debuggers": [
                    {"name": "x64dbg", "description": "Open-source x64/x32 debugger for Windows", "version": "snapshot_2023-10-28_15-22", "path": "debuggers\\x64dbg\\release\\x96dbg.exe"},
                    {"name": "HyperDbg", "description": "Hypervisor-assisted debugger for Windows", "version": "v0.13.1", "path": "debuggers\\hyperdbg"}
                ],
                "Decompilers": [
                    {"name": "Ghidra", "description": "Software reverse engineering framework", "version": "v11.3.2", "path": "decompilers\\ghidra\\ghidraRun.bat"},
                    {"name": "Cutter", "description": "Free and open-source reverse engineering platform powered by radare2", "version": "v2.4.1", "path": "decompilers\\cutter\\Cutter.exe"},
                    {"name": "dnSpyEx", "description": "Debugger and .NET assembly editor", "version": "v6.5.1", "path": "dotnet\\dnSpyEx\\dnSpy-net-win64\\dnSpy.exe"},
                    {"name": "ILSpy", "description": "Open-source .NET decompiler", "version": "v9.0.0.7889", "path": "dotnet\\ilspy\\ILSpy.exe"}
                ],
                "PE Tools": [
                    {"name": "PE-Bear", "description": "Portable Executable reversing tool", "version": "v0.7.0.4", "path": "pe\\pe-bear\\PE-bear.exe"},
                    {"name": "pestudio", "description": "PE file inspection tool", "version": "v9.61", "path": "pe\\pestudio\\pestudio.exe"},
                    {"name": "FLOSS", "description": "Find Lost Strings (FLOSS) extracts obfuscated strings from malware", "version": "v3.1.1", "path": "bin\\floss.exe"},
                    {"name": "capa", "description": "Static analysis tool to identify capabilities in executable files", "version": "v9.1.0", "path": "bin\\capa.exe"}
                ],
                "ELF Tools": [
                    {"name": "elfparser-ng", "description": "ELF file analyzer", "version": "v1.6.0", "path": "elf\\elfparser-ng\\elfparser-ng.exe"},
                    {"name": "xelfviewer", "description": "ELF viewer and analyzer", "version": "v1.0.0", "path": "elf\\xelfviewer\\xelfviewer.exe"}
                ],
                "Programming": [
                    {"name": "Notepad++", "description": "Source code editor", "version": "v8.7.9", "path": "utilities\\npp\\notepad++.exe"},
                    {"name": "WinPython", "description": "Portable Python distribution for Windows", "version": "v3.11.3", "path": "programming\\winpython\\python-3.11.3.amd64\\python.exe"}
                ],
                "Utilities": [
                    {"name": "7-Zip", "description": "File archiver with a high compression ratio", "version": "v24.09", "path": "utilities\\7zip\\7zFM.exe"},
                    {"name": "CyberChef", "description": "The Cyber Swiss Army Knife - a web app for encryption, encoding, compression and data analysis", "version": "v10.5.0", "path": "utilities\\cyberchef\\CyberChef_v10.5.0.html"},
                    {"name": "Entropy", "description": "Entropy calculator for files", "version": "v1.1", "path": "bin\\entropy.exe"}
                ]
            }
        
        # Set up category combobox
        self.category_combobox['values'] = sorted(list(self.tool_data.keys()))
        if self.category_combobox['values']:
            self.category_combobox.current(0)
            self.on_category_selected(None)
            
    def load_documentation(self):
        # Load documentation data from JSON file
        try:
            with open('documentation.json', 'r', encoding='utf-8') as f:
                self.doc_data = json.load(f)
        except FileNotFoundError:
            # Fallback to hardcoded data if JSON file is not found
            self.doc_data = {
                "General": [
                    {"title": "retoolkit wiki", "description": "Official retoolkit wiki", "type": "Web Link", "path": "https://github.com/mentebinaria/retoolkit/wiki"},
                    {"title": "Reverse Engineering For Everyone", "description": "Beginner's guide to reverse engineering", "type": "PDF", "path": "Documentation\\Reverse Engineering for everyone.pdf"},
                    {"title": "PC Assembly Language", "description": "Book on PC assembly language", "type": "PDF", "path": "Documentation\\pcasm-book.pdf"}
                ],
                "File Formats": [
                    {"title": "PE Format", "description": "Windows PE file format documentation", "type": "Web Link", "path": "https://learn.microsoft.com/en-us/windows/win32/debug/pe-format"},
                    {"title": "PE-COFF Specification", "description": "Microsoft PE/COFF file format specification", "type": "PDF", "path": "Documentation\\pecoff.pdf"},
                    {"title": "ELF Format", "description": "ELF file format documentation", "type": "PDF", "path": "Documentation\\elf.pdf"}
                ],
                "System Calls": [
                    {"title": "Linux kernel system calls", "description": "List of Linux kernel system calls", "type": "Web Link", "path": "https://marcin.juszkiewicz.com.pl/download/tables/syscalls.html"},
                    {"title": "syscalls.w3challs.com", "description": "System call reference for multiple platforms", "type": "Web Link", "path": "https://syscalls.w3challs.com"}
                ],
                "Tool Documentation": [
                    {"title": "Ghidra Documentation", "description": "Official Ghidra documentation", "type": "Folder", "path": "decompilers\\ghidra\\docs"},
                    {"title": "x64dbg Documentation", "description": "x64dbg help file", "type": "CHM", "path": "debuggers\\x64dbg\\release\\x64dbg.chm"}
                ]
            }
        
        # Set up documentation category combobox
        self.doc_category_combobox['values'] = sorted(list(self.doc_data.keys()))
        if self.doc_category_combobox['values']:
            self.doc_category_combobox.current(0)
            self.on_doc_category_selected(None)
            
    def on_category_selected(self, event):
        # Clear existing tools
        for item in self.tool_tree.get_children():
            self.tool_tree.delete(item)
            
        # Get selected category
        category = self.category_var.get()
        if category in self.tool_data:
            for tool in self.tool_data[category]:
                self.tool_tree.insert('', tk.END, values=(tool['name'], tool['description'], tool['version']))
                
    def on_doc_category_selected(self, event):
        # Clear existing documentation
        for item in self.doc_tree.get_children():
            self.doc_tree.delete(item)
            
        # Get selected category
        category = self.doc_category_var.get()
        if category in self.doc_data:
            for doc in self.doc_data[category]:
                self.doc_tree.insert('', tk.END, values=(doc['title'], doc['description'], doc['type']))
                
    def run_tool(self):
        # Get selected tool
        selected_item = self.tool_tree.selection()
        if not selected_item:
            messagebox.showwarning("Warning", "Please select a tool to run.")
            return
            
        # Get tool information
        item = self.tool_tree.item(selected_item[0])
        tool_name = item['values'][0]
        category = self.category_var.get()
        
        # Find the tool path
        for tool in self.tool_data[category]:
            if tool['name'] == tool_name:
                tool_path = tool['path']
                break
        else:
            messagebox.showerror("Error", "Tool not found.")
            return
            
        # Run the tool
        try:
            subprocess.Popen(tool_path, shell=True, cwd=os.path.dirname(tool_path))
        except Exception as e:
            messagebox.showerror("Error", f"Failed to run tool: {str(e)}")
            
    def open_tool_folder(self):
        # Get selected tool
        selected_item = self.tool_tree.selection()
        if not selected_item:
            messagebox.showwarning("Warning", "Please select a tool to open its folder.")
            return
            
        # Get tool information
        item = self.tool_tree.item(selected_item[0])
        tool_name = item['values'][0]
        category = self.category_var.get()
        
        # Find the tool path
        for tool in self.tool_data[category]:
            if tool['name'] == tool_name:
                tool_path = tool['path']
                break
        else:
            messagebox.showerror("Error", "Tool not found.")
            return
            
        # Open the tool folder
        folder_path = os.path.dirname(tool_path)
        if os.path.exists(folder_path):
            os.startfile(folder_path)
        else:
            messagebox.showerror("Error", f"Tool folder not found: {folder_path}")
            
    def open_documentation(self):
        # Get selected documentation
        selected_item = self.doc_tree.selection()
        if not selected_item:
            messagebox.showwarning("Warning", "Please select a documentation item to open.")
            return
            
        # Get documentation information
        item = self.doc_tree.item(selected_item[0])
        doc_title = item['values'][0]
        category = self.doc_category_var.get()
        
        # Find the documentation path
        for doc in self.doc_data[category]:
            if doc['title'] == doc_title:
                doc_path = doc['path']
                doc_type = doc['type']
                break
        else:
            messagebox.showerror("Error", "Documentation not found.")
            return
            
        # Open the documentation
        try:
            if doc_type == "Web Link":
                webbrowser.open(doc_path)
            else:
                if os.path.exists(doc_path):
                    os.startfile(doc_path)
                else:
                    messagebox.showerror("Error", f"Documentation not found: {doc_path}")
        except Exception as e:
            messagebox.showerror("Error", f"Failed to open documentation: {str(e)}")
            
    def check_for_updates(self):
        # In a real implementation, this would check GitHub for the latest release
        self.update_status_label.config(text="Checking for updates...")
        self.root.update_idletasks()
        
        # Simulate checking for updates
        try:
            # In a real app, you would use urllib to fetch the latest release info
            latest_version = "2025.05"  # This would be fetched from GitHub
            current_version = self.current_version_label.cget("text")
            
            if latest_version > current_version:
                self.update_status_label.config(text=f"Update available: {latest_version}")
                self.update_button.config(state=tk.NORMAL)
            else:
                self.update_status_label.config(text="You're running the latest version.")
                self.update_button.config(state=tk.DISABLED)
        except Exception as e:
            self.update_status_label.config(text=f"Error checking for updates: {str(e)}")
            
    def install_update(self):
        # In a real implementation, this would download and install the update
        self.update_status_label.config(text="Installing update...")
        self.progress_bar.start()
        self.root.update_idletasks()
        
        # Simulate update installation
        try:
            # In a real app, you would download the latest release and install it
            self.progress_bar.stop()
            self.update_status_label.config(text="Update installed successfully! Please restart the application.")
            self.update_button.config(state=tk.DISABLED)
        except Exception as e:
            self.progress_bar.stop()
            self.update_status_label.config(text=f"Error installing update: {str(e)}")
            
if __name__ == "__main__":
    try:
        import traceback
        root = tk.Tk()
        app = RetoolkitManager(root)
        root.mainloop()
    except Exception as e:
        with open('error.log', 'w') as f:
            f.write(f"Error: {str(e)}")
            f.write(f"\n\nTraceback:\n{traceback.format_exc()}")
        print(f"Error occurred: {str(e)}")
        print("Details written to error.log")