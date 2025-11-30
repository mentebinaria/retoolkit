import winreg
import os
import json

class ContextMenuIntegrator:
    def __init__(self):
        self.retoolkit_path = os.path.abspath(os.path.join(os.path.dirname(__file__), '..'))
        self.python_path = os.path.abspath(os.path.join(os.path.dirname(__file__), '..', 'venv', 'Scripts', 'python.exe'))
        self.manager_path = os.path.abspath(os.path.join(os.path.dirname(__file__), 'retoolkit_manager.py'))
        
        # Context menu registry keys
        self.context_menu_key = r'Software\Classes\*\shell\Retoolkit'
        self.context_menu_command_key = self.context_menu_key + r'\command'
        
        # Custom tools context menu key
        self.custom_tools_key = self.context_menu_key + r'\CustomTools'
    
    def add_context_menu(self):
        """Add Retoolkit to Windows context menu"""
        try:
            # Create Retoolkit context menu key
            with winreg.CreateKey(winreg.HKEY_CURRENT_USER, self.context_menu_key) as key:
                winreg.SetValueEx(key, '', 0, winreg.REG_SZ, 'Reverse Engineer\'s Toolkit')
                winreg.SetValueEx(key, 'Icon', 0, winreg.REG_SZ, f'{self.manager_path},0')
            
            # Create command key for opening Retoolkit
            with winreg.CreateKey(winreg.HKEY_CURRENT_USER, self.context_menu_command_key) as key:
                command = f'"{self.python_path}" "{self.manager_path}" "%1"'
                winreg.SetValueEx(key, '', 0, winreg.REG_SZ, command)
            
            # Add custom tools submenu
            self.add_custom_tools_submenu()
            
            print("Retoolkit context menu added successfully!")
            return True
        except Exception as e:
            print(f"Failed to add context menu: {str(e)}")
            return False
    
    def remove_context_menu(self):
        """Remove Retoolkit from Windows context menu"""
        try:
            # Remove custom tools submenu first
            self.remove_custom_tools_submenu()
            
            # Remove command key
            winreg.DeleteKey(winreg.HKEY_CURRENT_USER, self.context_menu_command_key)
            
            # Remove Retoolkit context menu key
            winreg.DeleteKey(winreg.HKEY_CURRENT_USER, self.context_menu_key)
            
            print("Retoolkit context menu removed successfully!")
            return True
        except Exception as e:
            print(f"Failed to remove context menu: {str(e)}")
            return False
    
    def add_custom_tools_submenu(self):
        """Add custom tools submenu to Retoolkit context menu"""
        try:
            # Create custom tools submenu key
            with winreg.CreateKey(winreg.HKEY_CURRENT_USER, self.custom_tools_key) as key:
                winreg.SetValueEx(key, '', 0, winreg.REG_SZ, 'Custom Tools')
                winreg.SetValueEx(key, 'Icon', 0, winreg.REG_SZ, f'{self.manager_path},1')
            
            # Load custom tools
            custom_tools = self.load_custom_tools()
            
            # Add each custom tool to the submenu
            for i, tool in enumerate(custom_tools):
                tool_key = f'{self.custom_tools_key}\{tool["name"]}'
                tool_command_key = f'{tool_key}\command'
                
                # Create tool key
                with winreg.CreateKey(winreg.HKEY_CURRENT_USER, tool_key) as key:
                    winreg.SetValueEx(key, '', 0, winreg.REG_SZ, tool["name"])
                    winreg.SetValueEx(key, 'Icon', 0, winreg.REG_SZ, f'{tool["path"]},0')
                
                # Create tool command key
                with winreg.CreateKey(winreg.HKEY_CURRENT_USER, tool_command_key) as key:
                    command = f'"{tool["path"]}" "%1"'
                    winreg.SetValueEx(key, '', 0, winreg.REG_SZ, command)
            
            print("Custom tools submenu added successfully!")
            return True
        except Exception as e:
            print(f"Failed to add custom tools submenu: {str(e)}")
            return False
    
    def remove_custom_tools_submenu(self):
        """Remove custom tools submenu from Retoolkit context menu"""
        try:
            # Get all custom tool subkeys
            with winreg.OpenKey(winreg.HKEY_CURRENT_USER, self.custom_tools_key, 0, winreg.KEY_READ) as key:
                num_subkeys, _, _ = winreg.QueryInfoKey(key)
                subkeys = []
                
                for i in range(num_subkeys):
                    subkey = winreg.EnumKey(key, i)
                    subkeys.append(subkey)
            
            # Remove each custom tool subkey
            for subkey in subkeys:
                tool_key = f'{self.custom_tools_key}\{subkey}'
                tool_command_key = f'{tool_key}\command'
                
                # Remove command key first
                try:
                    winreg.DeleteKey(winreg.HKEY_CURRENT_USER, tool_command_key)
                except:
                    pass
                
                # Remove tool key
                try:
                    winreg.DeleteKey(winreg.HKEY_CURRENT_USER, tool_key)
                except:
                    pass
            
            # Remove custom tools submenu key
            winreg.DeleteKey(winreg.HKEY_CURRENT_USER, self.custom_tools_key)
            
            print("Custom tools submenu removed successfully!")
            return True
        except Exception as e:
            print(f"Failed to remove custom tools submenu: {str(e)}")
            return False
    
    def update_custom_tools_submenu(self):
        """Update custom tools submenu with current custom tools"""
        try:
            # Remove existing custom tools submenu
            self.remove_custom_tools_submenu()
            
            # Add updated custom tools submenu
            self.add_custom_tools_submenu()
            
            print("Custom tools submenu updated successfully!")
            return True
        except Exception as e:
            print(f"Failed to update custom tools submenu: {str(e)}")
            return False
    
    def load_custom_tools(self):
        """Load custom tools from file"""
        try:
            custom_tools_path = os.path.join(self.retoolkit_path, 'custom_menu_tools.json')
            with open(custom_tools_path, 'r', encoding='utf-8') as f:
                return json.load(f)
        except FileNotFoundError:
            return []
        except Exception as e:
            print(f"Failed to load custom tools: {str(e)}")
            return []

if __name__ == "__main__":
    integrator = ContextMenuIntegrator()
    
    # Example usage:
    # integrator.add_context_menu()
    # integrator.remove_context_menu()
    # integrator.update_custom_tools_submenu()
    
    # Print help
    print("Reverse Engineer's Toolkit Context Menu Integrator")
    print("Available commands:")
    print("  add - Add Retoolkit to context menu")
    print("  remove - Remove Retoolkit from context menu")
    print("  update - Update custom tools submenu")
    
    # Get user input
    command = input("Enter command: ").strip().lower()
    
    if command == "add":
        integrator.add_context_menu()
    elif command == "remove":
        integrator.remove_context_menu()
    elif command == "update":
        integrator.update_custom_tools_submenu()
    else:
        print(f"Unknown command: {command}")