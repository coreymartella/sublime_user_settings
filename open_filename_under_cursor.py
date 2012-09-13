import sublime, sublime_plugin
import os.path, string
import re

VALID_FILENAME_CHARS = "-_.() %s%s%s" % (string.ascii_letters, string.digits, "/\\")
filename_re = re.compile(r'[\w/\.-]+')

class OpenFilenameUnderCursor(sublime_plugin.TextCommand):
    def run(self, edit):
        print "launched command!"
        for region in self.view.sel():
            # Find anything looking like file in whole line at cursor
            whole_line = self.view.substr(self.view.line(region))
            row, col = self.view.rowcol(region.begin())
            while col >= len(whole_line) or whole_line[col] in VALID_FILENAME_CHARS:
                col -= 1

            m = filename_re.search(whole_line, col)
            if m:
                filename = m.group()
                print "Opening file '%s'" % (filename)
                self.window.run_command("show_overlay", {"overlay": "goto", "text": filename, "show_files": true})
            else:
                print "No filename discovered"
