![version](https://img.shields.io/badge/version-20%2B-E23089)
![platform](https://img.shields.io/static/v1?label=platform&message=mac-intel%20|%20mac-arm%20|%20win-64&color=blue)

# scalability
replica of 4D v11 SQL demo database, originally shown at the 2008 Summit in Long Beach, CA.

### [`original`](https://github.com/miyako/4d-tips-scalability/tree/original) branch

the query and sort are executed in multiple forms. 
the objective is to showcase the preëmtive performance of the database engine itself.
no real difference between interpreted and compiled.

### `main` branch

the UI is removed so that the query and sort are executed in preëmtive processes.

#### interpreted mode

the result is proportional to the number of processes, as the processes are cöoperative.

<img src="https://github.com/user-attachments/assets/2eb0104a-57fd-4328-b9a4-b6a68a758a53" width="426" />

<img src="https://github.com/user-attachments/assets/d5e95a9a-e548-43f4-8b7a-a40e537424b4" width="552.5" />

#### compiled mode

the result suggests parallel processing, but beyond a threshold, the performance is worse than interpreted.

<img src="https://github.com/user-attachments/assets/8cb1ba03-be4d-4348-9dff-176ecb301290" width="426" />

<img src="https://github.com/user-attachments/assets/189709fc-84be-4500-b1e5-c318650c50b2" width="552.5" />
