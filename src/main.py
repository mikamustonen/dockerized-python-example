import sys


# Demonstrate how command-line arguments get passed into the script
if len(sys.argv) > 1:
    print('Received the following command-line arguments:')
    print(' '.join(sys.argv[1:]))
else:
    print('No command-line arguments received.')
