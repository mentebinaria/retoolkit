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
        
        # Load context menu tools
        self.load_context_menu_tools()
        
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
        
        # Session Log tab
        self.create_session_log_tab()
        
        # Initialize session log
        self.session_log = []
        self.current_session_id = self.generate_session_id()
        
    def create_tool_manager_tab(self):
        tool_frame = ttk.Frame(self.notebook)
        self.notebook.add(tool_frame, text="Tool Manager")
        
        # Tool category and scenario selection
        category_frame = ttk.Frame(tool_frame)
        category_frame.pack(fill=tk.X, padx=5, pady=5)
        
        ttk.Label(category_frame, text="Tool Category: ").pack(side=tk.LEFT, padx=5, pady=5)
        self.category_var = tk.StringVar()
        self.category_combobox = ttk.Combobox(category_frame, textvariable=self.category_var, state="readonly")
        self.category_combobox.pack(side=tk.LEFT, padx=5, pady=5, fill=tk.X, expand=True)
        self.category_combobox.bind('<<ComboboxSelected>>', self.on_category_selected)
        
        ttk.Label(category_frame, text="Scenario: ").pack(side=tk.LEFT, padx=5, pady=5)
        self.scenario_var = tk.StringVar()
        self.scenario_combobox = ttk.Combobox(category_frame, textvariable=self.scenario_var, state="readonly")
        self.scenario_combobox.pack(side=tk.LEFT, padx=5, pady=5, fill=tk.X, expand=True)
        self.scenario_combobox.bind('<<ComboboxSelected>>', self.on_category_selected)
        
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
        
        self.add_to_context_menu_button = ttk.Button(action_frame, text="Add to Context Menu", command=self.add_to_context_menu)
        self.add_to_context_menu_button.pack(side=tk.LEFT, padx=5, pady=5)
        
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
                    {"name": "x64dbg", "description": "Open-source x64/x32 debugger for Windows", "version": "snapshot_2023-10-28_15-22", "path": "debuggers\\x64dbg\\release\\x96dbg.exe", "scenarios": ["动态调试", "恶意软件分析"]},
                    {"name": "HyperDbg", "description": "Hypervisor-assisted debugger for Windows", "version": "v0.13.1", "path": "debuggers\\hyperdbg", "scenarios": ["内核调试", "动态调试", "恶意软件分析"]}
                ],
                "Decompilers": [
                    {"name": "Ghidra", "description": "Software reverse engineering framework", "version": "v11.3.2", "path": "decompilers\\ghidra\\ghidraRun.bat", "scenarios": ["静态分析", "逆向工程", "恶意软件分析"]},
                    {"name": "Cutter", "description": "Free and open-source reverse engineering platform powered by radare2", "version": "v2.4.1", "path": "decompilers\\cutter\\Cutter.exe", "scenarios": ["静态分析", "动态调试", "逆向工程"]},
                    {"name": "dnSpyEx", "description": "Debugger and .NET assembly editor", "version": "v6.5.1", "path": "dotnet\\dnSpyEx\\dnSpy-net-win64\\dnSpy.exe", "scenarios": [".NET逆向", "静态分析", "动态调试"]},
                    {"name": "ILSpy", "description": "Open-source .NET decompiler", "version": "v9.0.0.7889", "path": "dotnet\\ilspy\\ILSpy.exe", "scenarios": [".NET逆向", "静态分析"]}
                ],
                "PE Tools": [
                    {"name": "PE-Bear", "description": "Portable Executable reversing tool", "version": "v0.7.0.4", "path": "pe\\pe-bear\\PE-bear.exe", "scenarios": ["静态分析", "PE文件分析", "恶意软件分析"]},
                    {"name": "pestudio", "description": "PE file inspection tool", "version": "v9.61", "path": "pe\\pestudio\\pestudio.exe", "scenarios": ["静态分析", "PE文件分析", "恶意软件分析"]},
                    {"name": "FLOSS", "description": "Find Lost Strings (FLOSS) extracts obfuscated strings from malware", "version": "v3.1.1", "path": "bin\\floss.exe", "scenarios": ["静态分析", "字符串分析", "恶意软件分析"]},
                    {"name": "capa", "description": "Static analysis tool to identify capabilities in executable files", "version": "v9.1.0", "path": "bin\\capa.exe", "scenarios": ["静态分析", "恶意软件分析", "能力识别"]}
                ],
                "ELF Tools": [
                    {"name": "elfparser-ng", "description": "ELF file analyzer", "version": "v1.6.0", "path": "elf\\elfparser-ng\\elfparser-ng.exe", "scenarios": ["静态分析", "ELF文件分析"]},
                    {"name": "xelfviewer", "description": "ELF viewer and analyzer", "version": "v1.0.0", "path": "elf\\xelfviewer\\xelfviewer.exe", "scenarios": ["静态分析", "ELF文件分析"]}
                ],
                "Programming": [
                    {"name": "Notepad++", "description": "Source code editor", "version": "v8.7.9", "path": "utilities\\npp\\notepad++.exe", "scenarios": ["代码编辑", "逆向工程辅助"]},
                    {"name": "WinPython", "description": "Portable Python distribution for Windows", "version": "v3.11.3", "path": "programming\\winpython\\python-3.11.3.amd64\\python.exe", "scenarios": ["脚本编写", "逆向工程辅助"]}
                ],
                "Utilities": [
                    {"name": "7-Zip", "description": "File archiver with a high compression ratio", "version": "v24.09", "path": "utilities\\7zip\\7zFM.exe", "scenarios": ["文件处理", "逆向工程辅助"]},
                    {"name": "CyberChef", "description": "The Cyber Swiss Army Knife - a web app for encryption, encoding, compression and data analysis", "version": "v10.5.0", "path": "utilities\\cyberchef\\CyberChef_v10.5.0.html", "scenarios": ["数据处理", "加密分析", "逆向工程辅助"]},
                    {"name": "Entropy", "description": "Entropy calculator for files", "version": "v1.1", "path": "bin\\entropy.exe", "scenarios": ["静态分析", "混淆检测", "恶意软件分析"]}
                ]
            }
        
        # Set up category combobox
        self.category_combobox['values'] = sorted(list(self.tool_data.keys()))
        
        # Set up scenario combobox
        self.all_scenarios = set()
        for category in self.tool_data.values():
            for tool in category:
                if 'scenarios' in tool:
                    self.all_scenarios.update(tool['scenarios'])
        self.scenario_combobox['values'] = ['All'] + sorted(list(self.all_scenarios))
        self.scenario_combobox.current(0)
        
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
            
        # Get selected category and scenario
        category = self.category_var.get()
        selected_scenario = self.scenario_var.get()
        
        if category in self.tool_data:
            for tool in self.tool_data[category]:
                # Check if tool matches the selected scenario
                if selected_scenario == 'All' or ('scenarios' in tool and selected_scenario in tool['scenarios']):
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
            # Log the tool usage
            self.log_tool_usage(tool_name, "Run Tool")
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
            # Log the tool usage
            self.log_tool_usage(tool_name, "Open Tool Folder")
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
    
    def create_session_log_tab(self):
        log_frame = ttk.Frame(self.notebook)
        self.notebook.add(log_frame, text="Session Log")
        
        # Session log text box
        log_text_frame = ttk.Frame(log_frame)
        log_text_frame.pack(fill=tk.BOTH, expand=True, padx=5, pady=5)
        
        self.log_text = tk.Text(log_text_frame, wrap=tk.WORD)
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
    
    def generate_session_id(self):
        import datetime
        return datetime.datetime.now().strftime("%Y%m%d_%H%M%S")
    
    def log_tool_usage(self, tool_name, action):
        import datetime
        timestamp = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
        log_entry = f"[{timestamp}] {action}: {tool_name}"
        self.session_log.append(log_entry)
        self.log_text.insert(tk.END, log_entry + "\n")
        self.log_text.see(tk.END)
    
    def clear_session_log(self):
        self.session_log = []
        self.log_text.delete(1.0, tk.END)
        # Generate new session ID
        self.current_session_id = self.generate_session_id()
    
    def export_session_log(self):
        if not self.session_log:
            messagebox.showwarning("Empty Log", "The session log is empty.")
            return
        
        # Ask user for export file path
        file_path = filedialog.asksaveasfilename(
            defaultextension=".txt",
            filetypes=[("Text Files", "*.txt"), ("All Files", "*.*")],
            initialfile=f"retoolkit_session_{self.current_session_id}.txt"
        )
        
        if file_path:
            try:
                import datetime
                with open(file_path, 'w', encoding='utf-8') as f:
                    f.write("Reverse Engineer's Toolkit Session Log\n")
                    f.write(f"Session ID: {self.current_session_id}\n")
                    f.write(f"Generated on: {datetime.datetime.now().strftime('%Y-%m-%d %H:%M:%S')}\n")
                    f.write("\n")
                    for entry in self.session_log:
                        f.write(entry + "\n")
                messagebox.showinfo("Export Successful", f"Session log exported to: {file_path}")
            except Exception as e:
                messagebox.showerror("Export Error", f"Failed to export session log: {str(e)}")
    
    def load_context_menu_tools(self):
        # Load context menu tools from JSON file
        try:
            with open('context_menu.json', 'r', encoding='utf-8') as f:
                self.context_menu_tools = json.load(f)
        except FileNotFoundError:
            # Initialize with empty list if file not found
            self.context_menu_tools = []
    
    def save_context_menu_tools(self):
        # Save context menu tools to JSON file
        try:
            with open('context_menu.json', 'w', encoding='utf-8') as f:
                json.dump(self.context_menu_tools, f, indent=2, ensure_ascii=False)
        except Exception as e:
            messagebox.showerror("Save Error", f"Failed to save context menu tools: {str(e)}")
    
    def add_to_context_menu(self):
        # Get selected tool
        selected_item = self.tool_tree.selection()
        if not selected_item:
            messagebox.showwarning("Warning", "Please select a tool to add to context menu.")
            return
            
        # Get tool information
        item = self.tool_tree.item(selected_item[0])
        tool_name = item['values'][0]
        category = self.category_var.get()
        
        # Find the tool in the tool data
        for tool in self.tool_data[category]:
            if tool['name'] == tool_name:
                # Check if tool is already in context menu
                if any(t['name'] == tool_name for t in self.context_menu_tools):
                    messagebox.showinfo("Already in Context Menu", f"Tool '{tool_name}' is already in the context menu.")
                    return
                
                # Add tool to context menu
                self.context_menu_tools.append(tool.copy())
                self.save_context_menu_tools()
                messagebox.showinfo("Added to Context Menu", f"Tool '{tool_name}' has been added to the context menu.")
                break
        else:
            messagebox.showerror("Error", "Tool not found.")
            
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