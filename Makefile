MPI_COMPILE_FLAGS = $(shell mpicc --showme:compile)
MPI_LINK_FLAGS = $(shell mpicc --showme:link)
CC = 'gcc'
main: main.o sga.h generate.o memory.o statistic.o utility.o initial.o app.o random.o master.o comunica.o rselect.o operators.o app_cp.o app2_g.o app_sp.o
	$(CC) $(MPI_COMPILE_FLAGS) main.o generate.o memory.o statistic.o utility.o initial.o app.o random.o master.o comunica.o rselect.o operators.o app_cp.o app2_g.o app_sp.o $(MPI_LINK_FLAGS) -lm -o main
main.o: main.c sga.h
	$(CC) -c $(MPI_COMPILE_FLAGS) main.c $(MPI_LINK_FLAGS) -o main.o
random.o: random.c random.h
	$(CC) -c $(MPI_COMPILE_FLAGS) random.c $(MPI_LINK_FLAGS) -o random.o
generate.o: generate.c generate.h
	$(CC) -c $(MPI_COMPILE_FLAGS) generate.c $(MPI_LINK_FLAGS) -o generate.o
operators.o: operators.c operators.h
	$(CC) -c $(MPI_COMPILE_FLAGS) operators.c $(MPI_LINK_FLAGS) -o operators.o
rselect.o: rselect.c rselect.h
	$(CC) -c $(MPI_COMPILE_FLAGS) rselect.c $(MPI_LINK_FLAGS) -o rselect.o
memory.o: memory.c memory.h
	$(CC) -c $(MPI_COMPILE_FLAGS) memory.c $(MPI_LINK_FLAGS) -o memory.o
utility.o: utility.c
	$(CC) -c $(MPI_COMPILE_FLAGS) utility.c $(MPI_LINK_FLAGS) -o utility.o
statistic.o: statistic.c statistic.h
	$(CC) -c $(MPI_COMPILE_FLAGS) statistic.c $(MPI_LINK_FLAGS) -o statistic.o
initial.o: initial.c initial.h
	$(CC) -c $(MPI_COMPILE_FLAGS) initial.c $(MPI_LINK_FLAGS) -o initial.o
master.o: master.c master.h
	$(CC) -c $(MPI_COMPILE_FLAGS) master.c $(MPI_LINK_FLAGS) -o master.o
comunica.o: comunica.c comunica.h
	$(CC) -c $(MPI_COMPILE_FLAGS) comunica.c $(MPI_LINK_FLAGS) -o comunica.o
app.o: app.c app.h
	$(CC) -c $(MPI_COMPILE_FLAGS) app.c $(MPI_LINK_FLAGS) -o app.o
app_cp.o: app_cp.c app_cp.h
	$(CC) -c $(MPI_COMPILE_FLAGS) app_cp.c $(MPI_LINK_FLAGS) -o app_cp.o
app2_g.o: app2_g.c app2_g.h
	$(CC) -c $(MPI_COMPILE_FLAGS) app2_g.c $(MPI_LINK_FLAGS) -o app2_g.o
app_sp.o: app_sp.c app_sp.h
	$(CC) -c $(MPI_COMPILE_FLAGS) app_sp.c $(MPI_LINK_FLAGS) -o app_sp.o