import os

def main():
    pid = os.fork()

    if pid > 0:
        # Parent process
        print(f'This is the parent process. Child PID: {pid}')
    elif pid == 0:
        # Child process
        print(f'This is the child process. PID: {os.getpid()}')
    else:
        print('Fork failed')

if __name__ == "__main__":
    main()
