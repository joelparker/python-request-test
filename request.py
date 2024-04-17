import requests
import os

def main():
    print('Main')
    url = os.environ.get('URL',None)
    print('Value of URL environment variable is {v}'.format(v=url))
    if url is not None:
        while True:
            r = requests.get(url)
            print(r.json())

if __name__ == '__main__':
    main()
