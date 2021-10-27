g++ -std=c++17 -O3 -c main.cpp
g++ -std=c++17 -O3 -c std_thread.cpp
g++ -std=c++17 -O3 -c work_queue.cpp
g++ -std=c++17 -O3 -pthread -ltbb -c std_execution.cpp
g++ -std=c++17 -fopenmp -O3 -c openmp.cpp
g++ -std=c++17 -O3 -c collatz.cpp
g++ -std=c++17 -ltbb -pthread -fopenmp -o run collatz.o std_execution.o openmp.o work_queue.o std_thread.o main.o
