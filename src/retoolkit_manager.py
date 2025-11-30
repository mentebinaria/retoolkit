import tkinter as tk
from tkinter import ttk, messagebox, filedialog
import json
import os
import webbrowser
import urllib.request
import zipfile
import shutil
import subprocess
from context_menu_integrator import ContextMenuIntegrator

class RetoolkitManager:
    def __init__(self, root):
        self.root = root
        self.root.title("Reverse Engineer's Toolkit Manager")
        self.root.geometry("1000x600")
        self.root.minsize(800, 500)
        
        # Session logging
        self.session_log = []
        
        # Custom right-click menu tools
        self.custom_menu_tools = self.load_custom_menu_tools()
        
        # Set up the main window
        self.setup_ui()
        
        # Load tool data
        self.load_tool_data()
        
        # Load documentation
        self.load_documentation()
        
        # Add session log tab
        self.create_session_log_tab()
        
        # Add custom menu tab
        self.create_custom_menu_tab()
        
    def setup_ui(self):
        # Create a notebook for different sections
        self.notebook = ttk.Notebook(self.root)
        self.notebook.pack(fill=tk.BOTH, expand=True, padx=10, pady=10)
        
        # Tool Manager tab
        self.create_tool_manager_tab()
        
        # Documentation tab
        self.create_documentation_tab()
        
        # Session Log tab
        # self.create_session_log_tab()  # Will be called after initialization
        
        # Custom Menu tab
        # self.create_custom_menu_tab()  # Will be called after initialization
        
        # Update tab
        self.create_update_tab()
        
    def create_tool_manager_tab(self):
        tool_frame = ttk.Frame(self.notebook)
        self.notebook.add(tool_frame, text="Tool Manager")
        
        # Tool category and scenario selection
        selection_frame = ttk.Frame(tool_frame)
        selection_frame.pack(fill=tk.X, padx=5, pady=5)
        
        # Category selection
        category_frame = ttk.Frame(selection_frame)
        category_frame.pack(side=tk.LEFT, padx=5, pady=5, fill=tk.X, expand=True)
        
        ttk.Label(category_frame, text="Tool Category: ").pack(side=tk.LEFT, padx=5, pady=5)
        self.category_var = tk.StringVar()
        self.category_combobox = ttk.Combobox(category_frame, textvariable=self.category_var, state="readonly")
        self.category_combobox.pack(side=tk.LEFT, padx=5, pady=5, fill=tk.X, expand=True)
        self.category_combobox.bind('<<ComboboxSelected>>', self.on_category_or_scenario_selected)
        
        # Scenario selection
        scenario_frame = ttk.Frame(selection_frame)
        scenario_frame.pack(side=tk.LEFT, padx=5, pady=5, fill=tk.X, expand=True)
        
        ttk.Label(scenario_frame, text="Tool Scenario: ").pack(side=tk.LEFT, padx=5, pady=5)
        self.scenario_var = tk.StringVar()
        self.scenario_combobox = ttk.Combobox(scenario_frame, textvariable=self.scenario_var, state="readonly")
        self.scenario_combobox.pack(side=tk.LEFT, padx=5, pady=5, fill=tk.X, expand=True)
        self.scenario_combobox.bind('<<ComboboxSelected>>', self.on_category_or_scenario_selected)
        
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
        self.notebook.add(update_frame, text="Updates")
        
        # Manager update status
        manager_frame = ttk.LabelFrame(update_frame, text="Manager Update")
        manager_frame.pack(fill=tk.X, padx=5, pady=10)
        
        # Current version
        version_frame = ttk.Frame(manager_frame)
        version_frame.pack(fill=tk.X, padx=5, pady=5)
        
        ttk.Label(version_frame, text="Current Version: ").pack(side=tk.LEFT, padx=5, pady=5)
        self.current_version_label = ttk.Label(version_frame, text="2025.04")
        self.current_version_label.pack(side=tk.LEFT, padx=5, pady=5)
        
        # Check for manager updates
        check_manager_frame = ttk.Frame(manager_frame)
        check_manager_frame.pack(fill=tk.X, padx=5, pady=5)
        
        self.check_manager_update_button = ttk.Button(check_manager_frame, text="Check for Manager Updates", command=self.check_for_manager_updates)
        self.check_manager_update_button.pack(side=tk.LEFT, padx=5, pady=5)
        
        self.manager_update_status_label = ttk.Label(check_manager_frame, text="")
        self.manager_update_status_label.pack(side=tk.LEFT, padx=5, pady=5)
        
        # Manager update progress and button
        manager_progress_frame = ttk.Frame(manager_frame)
        manager_progress_frame.pack(fill=tk.X, padx=5, pady=5)
        
        self.manager_progress_bar = ttk.Progressbar(manager_progress_frame, mode='indeterminate')
        self.manager_progress_bar.pack(fill=tk.X, padx=5, pady=5)
        
        self.manager_update_button = ttk.Button(manager_progress_frame, text="Install Manager Update", command=self.install_manager_update, state=tk.DISABLED)
        self.manager_update_button.pack(side=tk.LEFT, padx=5, pady=5)
        
        # Tool updates
        tool_frame = ttk.LabelFrame(update_frame, text="Tool Updates")
        tool_frame.pack(fill=tk.BOTH, expand=True, padx=5, pady=10)
        
        # Check for tool updates
        check_tool_frame = ttk.Frame(tool_frame)
        check_tool_frame.pack(fill=tk.X, padx=5, pady=5)
        
        self.check_tool_update_button = ttk.Button(check_tool_frame, text="Check for Tool Updates", command=self.check_for_tool_updates)
        self.check_tool_update_button.pack(side=tk.LEFT, padx=5, pady=5)
        
        self.tool_update_status_label = ttk.Label(check_tool_frame, text="")
        self.tool_update_status_label.pack(side=tk.LEFT, padx=5, pady=5)
        
        # Tool update list
        tool_update_list_frame = ttk.Frame(tool_frame)
        tool_update_list_frame.pack(fill=tk.BOTH, expand=True, padx=5, pady=5)
        
        columns = ('name', 'current_version', 'latest_version', 'status')
        self.tool_update_tree = ttk.Treeview(tool_update_list_frame, columns=columns, show='headings')
        self.tool_update_tree.heading('name', text='Tool Name')
        self.tool_update_tree.heading('current_version', text='Current Version')
        self.tool_update_tree.heading('latest_version', text='Latest Version')
        self.tool_update_tree.heading('status', text='Status')
        self.tool_update_tree.column('name', width=200)
        self.tool_update_tree.column('current_version', width=150)
        self.tool_update_tree.column('latest_version', width=150)
        self.tool_update_tree.column('status', width=100)
        self.tool_update_tree.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)
        
        # Scrollbar for tool update list
        scrollbar = ttk.Scrollbar(tool_update_list_frame, orient=tk.VERTICAL, command=self.tool_update_tree.yview)
        self.tool_update_tree.configure(yscroll=scrollbar.set)
        scrollbar.pack(side=tk.RIGHT, fill=tk.Y)
        
        # Tool update actions
        tool_update_action_frame = ttk.Frame(tool_frame)
        tool_update_action_frame.pack(fill=tk.X, padx=5, pady=5)
        
        self.update_selected_tool_button = ttk.Button(tool_update_action_frame, text="Update Selected Tool", command=self.update_selected_tool, state=tk.DISABLED)
        self.update_selected_tool_button.pack(side=tk.LEFT, padx=5, pady=5)
        
        self.update_all_tools_button = ttk.Button(tool_update_action_frame, text="Update All Tools", command=self.update_all_tools, state=tk.DISABLED)
        self.update_all_tools_button.pack(side=tk.LEFT, padx=5, pady=5)
        
    def load_tool_data(self):
        # Load tool data from JSON file
        try:
            with open('tools.json', 'r', encoding='utf-8') as f:
                self.tool_data = json.load(f)
        except FileNotFoundError:
            # Fallback to hardcoded data if JSON file is not found
            self.tool_data = {
                "Debuggers": [
                    {"name": "x64dbg", "description": "Open-source x64/x32 debugger for Windows", "version": "snapshot_2023-10-28_15-22", "path": "debuggers\\x64dbg\\release\\x96dbg.exe", "scenario": "动态调试"},
                    {"name": "HyperDbg", "description": "Hypervisor-assisted debugger for Windows", "version": "v0.13.1", "path": "debuggers\\hyperdbg", "scenario": "动态调试"}
                ],
                "Decompilers": [
                    {"name": "Ghidra", "description": "Software reverse engineering framework", "version": "v11.3.2", "path": "decompilers\\ghidra\\ghidraRun.bat", "scenario": "静态分析"},
                    {"name": "Cutter", "description": "Free and open-source reverse engineering platform powered by radare2", "version": "v2.4.1", "path": "decompilers\\cutter\\Cutter.exe", "scenario": "静态分析"},
                    {"name": "dnSpyEx", "description": "Debugger and .NET assembly editor", "version": "v6.5.1", "path": "dotnet\\dnSpyEx\\dnSpy-net-win64\\dnSpy.exe", "scenario": ["静态分析", "动态调试"]},
                    {"name": "ILSpy", "description": "Open-source .NET decompiler", "version": "v9.0.0.7889", "path": "dotnet\\ilspy\\ILSpy.exe", "scenario": "静态分析"}
                ],
                "PE Tools": [
                    {"name": "PE-Bear", "description": "Portable Executable reversing tool", "version": "v0.7.0.4", "path": "pe\\pe-bear\\PE-bear.exe", "scenario": "文件格式分析"},
                    {"name": "pestudio", "description": "PE file inspection tool", "version": "v9.61", "path": "pe\\pestudio\\pestudio.exe", "scenario": "文件格式分析"},
                    {"name": "FLOSS", "description": "Find Lost Strings (FLOSS) extracts obfuscated strings from malware", "version": "v3.1.1", "path": "bin\\floss.exe", "scenario": "静态分析"},
                    {"name": "capa", "description": "Static analysis tool to identify capabilities in executable files", "version": "v9.1.0", "path": "bin\\capa.exe", "scenario": "静态分析"}
                ],
                "ELF Tools": [
                    {"name": "elfparser-ng", "description": "ELF file analyzer", "version": "v1.6.0", "path": "elf\\elfparser-ng\\elfparser-ng.exe", "scenario": "文件格式分析"},
                    {"name": "xelfviewer", "description": "ELF viewer and analyzer", "version": "v1.0.0", "path": "elf\\xelfviewer\\xelfviewer.exe", "scenario": "文件格式分析"}
                ],
                "Programming": [
                    {"name": "Notepad++", "description": "Source code editor", "version": "v8.7.9", "path": "utilities\\npp\\notepad++.exe", "scenario": "编程辅助"},
                    {"name": "WinPython", "description": "Portable Python distribution for Windows", "version": "v3.1.1", "path": "programming\\winpython\\python-3.11.3.amd64\\python.exe", "scenario": "编程辅助"}
                ],
                "Utilities": [
                    {"name": "7-Zip", "description": "File archiver with a high compression ratio", "version": "v24.09", "path": "utilities\\7zip\\7zFM.exe", "scenario": "通用工具"},
                    {"name": "CyberChef", "description": "The Cyber Swiss Army Knife - a web app for encryption, encoding, compression and data analysis", "version": "v10.5.0", "path": "utilities\\cyberchef\\CyberChef_v10.5.0.html", "scenario": "通用工具"},
                    {"name": "Entropy", "description": "Entropy calculator for files", "version": "v1.1", "path": "bin\\entropy.exe", "scenario": "静态分析"}
                ]
            }
        
        # Collect all unique scenarios
        self.scenarios = set()
        for category in self.tool_data.values():
            for tool in category:
                if 'scenario' in tool:
                    if isinstance(tool['scenario'], list):
                        for s in tool['scenario']:
                            self.scenarios.add(s)
                    else:
                        self.scenarios.add(tool['scenario'])
        
        # Set up category and scenario comboboxes
        self.category_combobox['values'] = sorted(list(self.tool_data.keys()))
        self.scenario_combobox['values'] = ['All'] + sorted(list(self.scenarios))
        
        if self.category_combobox['values']:
            self.category_combobox.current(0)
        if self.scenario_combobox['values']:
            self.scenario_combobox.current(0)
        
        self.on_category_or_scenario_selected(None)
            
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
            
    def on_category_or_scenario_selected(self, event):
        # Clear existing tools
        for item in self.tool_tree.get_children():
            self.tool_tree.delete(item)
            
        # Get selected category and scenario
        selected_category = self.category_var.get()
        selected_scenario = self.scenario_var.get()
        
        # Filter tools based on selected category and scenario
        for category, tools in self.tool_data.items():
            if selected_category and category != selected_category:
                continue
            
            for tool in tools:
                # Check if tool matches selected scenario
                if selected_scenario and selected_scenario != 'All':
                    tool_scenarios = tool.get('scenario', [])
                    if isinstance(tool_scenarios, list):
                        if selected_scenario not in tool_scenarios:
                            continue
                    else:
                        if tool_scenarios != selected_scenario:
                            continue
                
                # Add tool to the tree
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
            # Log the tool execution
            self.log_session_action(f"Run tool: {tool_name}")
        except Exception as e:
            messagebox.showerror("Error", f"Failed to run tool: {str(e)}")
            # Log the error
            self.log_session_action(f"Failed to run tool: {tool_name} - Error: {str(e)}")
            
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
            
    def check_for_manager_updates(self):
        # In a real implementation, this would check GitHub for the latest release
        self.manager_update_status_label.config(text="Checking for updates...")
        self.root.update_idletasks()
        
        # Simulate checking for updates
        try:
            # In a real app, you would use urllib to fetch the latest release info
            latest_version = "2025.05"  # This would be fetched from GitHub
            current_version = self.current_version_label.cget("text")
            
            if latest_version > current_version:
                self.manager_update_status_label.config(text=f"Update available: {latest_version}")
                self.manager_update_button.config(state=tk.NORMAL)
            else:
                self.manager_update_status_label.config(text="You're running the latest version.")
                self.manager_update_button.config(state=tk.DISABLED)
        except Exception as e:
            self.manager_update_status_label.config(text=f"Error checking for updates: {str(e)}")
    
    def check_for_tool_updates(self):
        # In a real implementation, this would check each tool's official website or GitHub for updates
        self.tool_update_status_label.config(text="Checking for tool updates...")
        self.root.update_idletasks()
        
        # Clear existing tool update data
        for item in self.tool_update_tree.get_children():
            self.tool_update_tree.delete(item)
        
        # Simulate checking for tool updates
        try:
            # This is a simulation - in a real app, you would check each tool individually
            tool_updates = {
                "x64dbg": "snapshot_2023-11-05_10-15",
                "Ghidra": "v11.4",
                "Cutter": "v2.5.0",
                # Other tools would be checked here
            }
            
            # Check each tool for updates
            update_available_count = 0
            for category, tools in self.tool_data.items():
                for tool in tools:
                    tool_name = tool['name']
                    current_version = tool['version']
                    
                    if tool_name in tool_updates:
                        latest_version = tool_updates[tool_name]
                        if latest_version > current_version:
                            status = "Update Available"
                            update_available_count += 1
                        else:
                            status = "Up to Date"
                    else:
                        latest_version = "N/A"
                        status = "Not Checked"
                    
                    # Add tool update info to the tree
                    self.tool_update_tree.insert('', tk.END, values=(tool_name, current_version, latest_version, status))
            
            # Update status label and buttons
            if update_available_count > 0:
                self.tool_update_status_label.config(text=f"{update_available_count} tool(s) have updates available")
                self.update_selected_tool_button.config(state=tk.NORMAL)
                self.update_all_tools_button.config(state=tk.NORMAL)
            else:
                self.tool_update_status_label.config(text="All tools are up to date")
                self.update_selected_tool_button.config(state=tk.DISABLED)
                self.update_all_tools_button.config(state=tk.DISABLED)
                
        except Exception as e:
            self.tool_update_status_label.config(text=f"Error checking for tool updates: {str(e)}")
    
    def update_selected_tool(self):
        # Get selected tool
        selected_item = self.tool_update_tree.selection()
        if not selected_item:
            messagebox.showwarning("Warning", "Please select a tool to update.")
            return
            
        # Get tool information
        item = self.tool_update_tree.item(selected_item[0])
        tool_name = item['values'][0]
        
        # Simulate tool update
        messagebox.showinfo("Update", f"Simulating update for tool: {tool_name}\n\nIn a real implementation, this would download and install the latest version of the tool.")
        
        # Log the tool update
        self.log_session_action(f"Updated tool: {tool_name}")
        
        # Refresh tool update list
        self.check_for_tool_updates()
    
    def update_all_tools(self):
        # Simulate updating all tools
        messagebox.showinfo("Update All", "Simulating update for all tools\n\nIn a real implementation, this would download and install the latest version of all tools with available updates.")
        
        # Log the update all action
        self.log_session_action("Updated all tools")
        
        # Refresh tool update list
        self.check_for_tool_updates()
            
    def create_session_log_tab(self):
        log_frame = ttk.Frame(self.notebook)
        self.notebook.add(log_frame, text="Session Log")
        
        # Session log text area
        log_text_frame = ttk.Frame(log_frame)
        log_text_frame.pack(fill=tk.BOTH, expand=True, padx=5, pady=5)
        
        self.log_text = tk.Text(log_text_frame, wrap=tk.WORD, state=tk.DISABLED)
        self.log_text.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)
        
        # Scrollbar for log text
        scrollbar = ttk.Scrollbar(log_text_frame, orient=tk.VERTICAL, command=self.log_text.yview)
        self.log_text.configure(yscroll=scrollbar.set)
        scrollbar.pack(side=tk.RIGHT, fill=tk.Y)
        
        # Log actions
        log_action_frame = ttk.Frame(log_frame)
        log_action_frame.pack(fill=tk.X, padx=5, pady=5)
        
        self.clear_log_button = ttk.Button(log_action_frame, text="Clear Log", command=self.clear_session_log)
        self.clear_log_button.pack(side=tk.LEFT, padx=5, pady=5)
        
        self.export_log_button = ttk.Button(log_action_frame, text="Export Log", command=self.export_session_log)
        self.export_log_button.pack(side=tk.LEFT, padx=5, pady=5)
    
    def log_session_action(self, action):
        import datetime
        timestamp = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        log_entry = f"[{timestamp}] {action}\n"
        
        self.session_log.append(log_entry)
        
        # Update the log text area
        self.log_text.config(state=tk.NORMAL)
        self.log_text.insert(tk.END, log_entry)
        self.log_text.config(state=tk.DISABLED)
        # Auto-scroll to the bottom
        self.log_text.yview(tk.END)
    
    def clear_session_log(self):
        if messagebox.askyesno("Clear Log", "Are you sure you want to clear the session log?"):
            self.session_log = []
            self.log_text.config(state=tk.NORMAL)
            self.log_text.delete(1.0, tk.END)
            self.log_text.config(state=tk.DISABLED)
    
    def load_custom_menu_tools(self):
        # Load custom menu tools from file
        try:
            with open('custom_menu_tools.json', 'r', encoding='utf-8') as f:
                return json.load(f)
        except FileNotFoundError:
            # Return empty list if file doesn't exist
            return []
    
    def save_custom_menu_tools(self):
        # Save custom menu tools to file
        try:
            with open('custom_menu_tools.json', 'w', encoding='utf-8') as f:
                json.dump(self.custom_menu_tools, f, indent=2, ensure_ascii=False)
        except Exception as e:
            messagebox.showerror("Error", f"Failed to save custom menu tools: {str(e)}")
    
    def create_custom_menu_tab(self):
        custom_frame = ttk.Frame(self.notebook)
        self.notebook.add(custom_frame, text="Custom Right-Click Menu")
        
        # Available tools list
        available_frame = ttk.LabelFrame(custom_frame, text="Available Tools")
        available_frame.pack(side=tk.LEFT, fill=tk.BOTH, expand=True, padx=5, pady=5)
        
        columns = ('name', 'description', 'version')
        self.available_tools_tree = ttk.Treeview(available_frame, columns=columns, show='headings')
        self.available_tools_tree.heading('name', text='Tool Name')
        self.available_tools_tree.heading('description', text='Description')
        self.available_tools_tree.heading('version', text='Version')
        self.available_tools_tree.column('name', width=150)
        self.available_tools_tree.column('description', width=300)
        self.available_tools_tree.column('version', width=100)
        self.available_tools_tree.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)
        
        # Scrollbar for available tools
        available_scrollbar = ttk.Scrollbar(available_frame, orient=tk.VERTICAL, command=self.available_tools_tree.yview)
        self.available_tools_tree.configure(yscroll=available_scrollbar.set)
        available_scrollbar.pack(side=tk.RIGHT, fill=tk.Y)
        
        # Custom menu tools list
        custom_frame = ttk.LabelFrame(custom_frame, text="Custom Menu Tools")
        custom_frame.pack(side=tk.LEFT, fill=tk.BOTH, expand=True, padx=5, pady=5)
        
        self.custom_tools_tree = ttk.Treeview(custom_frame, columns=('name', 'description'), show='headings')
        self.custom_tools_tree.heading('name', text='Tool Name')
        self.custom_tools_tree.heading('description', text='Description')
        self.custom_tools_tree.column('name', width=150)
        self.custom_tools_tree.column('description', width=300)
        self.custom_tools_tree.pack(side=tk.LEFT, fill=tk.BOTH, expand=True)
        
        # Scrollbar for custom tools
        custom_scrollbar = ttk.Scrollbar(custom_frame, orient=tk.VERTICAL, command=self.custom_tools_tree.yview)
        self.custom_tools_tree.configure(yscroll=custom_scrollbar.set)
        custom_scrollbar.pack(side=tk.RIGHT, fill=tk.Y)
        
        # Action buttons
        action_frame = ttk.Frame(custom_frame.master)
        action_frame.pack(fill=tk.X, padx=5, pady=5)
        
        self.add_to_custom_button = ttk.Button(action_frame, text="Add to Custom Menu", command=self.add_to_custom_menu)
        self.add_to_custom_button.pack(side=tk.LEFT, padx=5, pady=5)
        
        self.remove_from_custom_button = ttk.Button(action_frame, text="Remove from Custom Menu", command=self.remove_from_custom_menu)
        self.remove_from_custom_button.pack(side=tk.LEFT, padx=5, pady=5)
        
        self.save_custom_menu_button = ttk.Button(action_frame, text="Save Custom Menu", command=self.save_custom_menu)
        self.save_custom_menu_button.pack(side=tk.LEFT, padx=5, pady=5)
        
        self.update_context_menu_button = ttk.Button(action_frame, text="Update Context Menu", command=self.update_context_menu)
        self.update_context_menu_button.pack(side=tk.LEFT, padx=5, pady=5)
        
        # Populate available tools and custom tools lists
        self.populate_available_tools()
        self.populate_custom_tools()
    
    def populate_available_tools(self):
        # Clear existing data
        for item in self.available_tools_tree.get_children():
            self.available_tools_tree.delete(item)
        
        # Add all tools to available tools list
        for category, tools in self.tool_data.items():
            for tool in tools:
                # Check if tool is already in custom menu
                in_custom = any(ct['name'] == tool['name'] for ct in self.custom_menu_tools)
                if not in_custom:
                    self.available_tools_tree.insert('', tk.END, values=(tool['name'], tool['description'], tool['version']))
    
    def populate_custom_tools(self):
        # Clear existing data
        for item in self.custom_tools_tree.get_children():
            self.custom_tools_tree.delete(item)
        
        # Add custom menu tools to the list
        for tool in self.custom_menu_tools:
            self.custom_tools_tree.insert('', tk.END, values=(tool['name'], tool['description']))
    
    def add_to_custom_menu(self):
        # Get selected tool from available tools
        selected_item = self.available_tools_tree.selection()
        if not selected_item:
            messagebox.showwarning("Warning", "Please select a tool to add to custom menu.")
            return
        
        # Get tool information
        item = self.available_tools_tree.item(selected_item[0])
        tool_name = item['values'][0]
        
        # Find the tool in tool_data
        for category, tools in self.tool_data.items():
            for tool in tools:
                if tool['name'] == tool_name:
                    # Add tool to custom menu tools
                    self.custom_menu_tools.append({
                        'name': tool['name'],
                        'description': tool['description'],
                        'path': tool['path']
                    })
                    break
            else:
                continue
            break
        
        # Refresh the lists
        self.populate_available_tools()
        self.populate_custom_tools()
    
    def remove_from_custom_menu(self):
        # Get selected tool from custom tools
        selected_item = self.custom_tools_tree.selection()
        if not selected_item:
            messagebox.showwarning("Warning", "Please select a tool to remove from custom menu.")
            return
        
        # Get tool information
        item = self.custom_tools_tree.item(selected_item[0])
        tool_name = item['values'][0]
        
        # Remove tool from custom menu tools
        self.custom_menu_tools = [tool for tool in self.custom_menu_tools if tool['name'] != tool_name]
        
        # Refresh the lists
        self.populate_available_tools()
        self.populate_custom_tools()
    
    def save_custom_menu(self):
        # Save custom menu tools to file
        self.save_custom_menu_tools()
        messagebox.showinfo("Success", "Custom menu tools saved successfully!")
    
    def update_context_menu(self):
        # Update the Windows context menu with current custom tools
        try:
            integrator = ContextMenuIntegrator()
            success = integrator.update_custom_tools_submenu()
            
            if success:
                messagebox.showinfo("Success", "Context menu updated successfully!")
            else:
                messagebox.showerror("Error", "Failed to update context menu.")
        except Exception as e:
            messagebox.showerror("Error", f"Failed to update context menu: {str(e)}")
    
    def export_session_log(self):
        file_path = filedialog.asksaveasfilename(
            defaultextension=".txt",
            filetypes=[("Text Files", "*.txt"), ("All Files", "*.*")],
            title="Export Session Log"
        )
        
        if file_path:
            try:
                with open(file_path, 'w', encoding='utf-8') as f:
                    for entry in self.session_log:
                        f.write(entry)
                messagebox.showinfo("Export Successful", f"Session log exported to: {file_path}")
            except Exception as e:
                messagebox.showerror("Export Error", f"Failed to export session log: {str(e)}")
    
    def install_manager_update(self):
        # In a real implementation, this would download and install the update
        self.manager_update_status_label.config(text="Installing update...")
        self.manager_progress_bar.start()
        self.root.update_idletasks()
        
        # Simulate update installation
        try:
            # In a real app, you would download the latest release and install it
            self.manager_progress_bar.stop()
            self.manager_update_status_label.config(text="Update installed successfully! Please restart the application.")
            self.manager_update_button.config(state=tk.DISABLED)
        except Exception as e:
            self.manager_progress_bar.stop()
            self.manager_update_status_label.config(text=f"Error installing update: {str(e)}")
            
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