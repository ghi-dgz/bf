import time
import sys
def bf(code):
    commands = list("><+-.,[]?!%/*")

    def remove_non_commands(code, commands):
        return ''.join(c for c in code if c in commands)

    def remove_comments(code, commands) -> str:
        start = "/*"
        end = "*/"
        comment = False
        out = ""
        for i in range(len(code)):
            if i < len(code)-1:
                if code[i:i+2] == start:
                    comment = True
                elif code[i:i+2] == end:
                    comment = False
                else:
                    if not comment and code[i] in commands:
                        out += code[i]
            else:
                if not comment and code[i] in commands:
                    out += code[i]
        return out
    
    code = remove_comments(code, commands)
    code = remove_non_commands(code, commands)
    print(code)

if __name__ == "__main__":
    if len(sys.argv) > 1:
        input_tape = sys.argv[2] if (len(sys.argv) > 2 and sys.argv[2][0:2] != "--") else ""
        input_auto_zero = False if input_tape == "" else True

        with open(sys.argv[1], 'r') as file:
            bf(file.read())
    else:
        print("Usage: python bf-c.py [file] [args]")