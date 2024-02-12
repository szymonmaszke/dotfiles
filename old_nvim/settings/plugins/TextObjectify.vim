scriptencoding utf-8

let g:textobjectify = {
            \'```': {'left': '```', 'right': '```', 'same': 0, 'seek': 1, 'line': 0},
            \'(': {'left': '(', 'right': ')', 'same': 0, 'seek': 1, 'line': 0},
            \')': {'left': '(', 'right': ')', 'same': 0, 'seek': 2, 'line': 0},
            \'{': {'left': '{', 'right': '}', 'same': 0, 'seek': 1, 'line': 0},
            \'}': {'left': '{', 'right': '}', 'same': 0, 'seek': 2, 'line': 0},
            \'[': {'left': '\[', 'right': '\]', 'same': 0, 'seek': 1, 'line': 0},
            \']': {'left': '\[', 'right': '\]', 'same': 0, 'seek': 2, 'line': 0},
            \'<': {'left': '<', 'right': '>', 'same': 0, 'seek': 1, 'line': 0},
            \'>': {'left': '<', 'right': '>', 'same': 0, 'seek': 2, 'line': 0},
            \'"': {'left': '"', 'right': '"', 'same': 1, 'seek': 1, 'line': 0},
            \"'": {'left': "'", 'right': "'", 'same': 1, 'seek': 1, 'line': 0},
            \'`': {'left': '`', 'right': '`', 'same': 1, 'seek': 1, 'line': 0},
            \'V': {'left': '^\s*\(if\|for\|function\|try\|while\)\>',
                \'right': '^\s*end', 'same': 0, 'seek': 1, 'line': 1},
            \"\<cr>": {'left': '\%^', 'right': '\%$', 'same': 0, 'seek': 0,
            \'line': 0},
            \}
