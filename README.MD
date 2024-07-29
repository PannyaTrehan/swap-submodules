# Swap Two Submodules in Git

This guide provides instructions for swapping two submodules in a Git repository using a Bash script. Follow the steps below based on your operating system.

## Windows

1. **Install Git**
   - If you do not have Git installed, you can download it from [here](https://git-scm.com/).

2. **Add the Script to Your Repository**
   - Add the `swap_modules.sh` file (code is below) to your repository/directory if it is not already there.

3. **Initialize/Update Existing Submodules**
   - Make sure to run the following command to initialize/update any submodule that already exists within the repository (otherwise, this will not work as its contents will be empty and therefore will not be recognized by git):
     ```bash
     git submodule update --init --recursive
     ```

4. **Run the Swap Modules Script**
   - Run the `swap_modules` script (no trailing slashes):
     ```bash
     ./swap_modules.sh <old_submodule_path> <new_submodule_url> <new_submodule_path>
     ```

5. **Commit (Optional)**
   - Commit the changes if needed.

## Linux/Unix

1. **Add the Script to Your Repository**
   - Add the `swap_modules.sh` file (code is below) to your repository/directory if it is not already there.

2. **Give Executable Rights to the Script**
   - Change the permissions to make the script executable:
     ```bash
     chmod +x swap_modules.sh
     ```

3. **Initialize/Update Existing Submodules**
   - Make sure to run the following command to initialize/update any submodule that already exists (otherwise, this will not work as its contents will be empty and therefore will not be recognized by git):
     ```bash
     git submodule update --init --recursive
     ```

4. **Run the Swap Modules Script**
   - Run the `swap_modules` script (no trailing slashes):
     ```bash
     ./swap_modules.sh <old_submodule_path> <new_submodule_url> <new_submodule_path>
     ```

5. **Commit (Optional)**
   - Commit the changes if needed.