MPI_COMPILE_FLAGS = $(shell mpicc --showme:compile)
MPI_LINK_FLAGS = $(shell mpicc --showme:link)
CC = 'gcc'
main: main.o sga.h generate.o memory.o statistic.o utility.o initial.o app.o app2.o random.o master.o comunica.o rselect.o operators.o app_g.o app_sp.o
	$(CC) $(MPI_COMPILE_FLAGS) main.o generate.o memory.o statistic.o utility.o initial.o app.o app2.o random.o master.o comunica.o rselect.o operators.o app_g.o app_sp.o $(MPI_LINK_FLAGS) -lm -o main
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
app2.o: app2.c app2.h
	$(CC) -c $(MPI_COMPILE_FLAGS) app2.c $(MPI_LINK_FLAGS) -o app2.o
master.o: master.c master.h
	$(CC) -c $(MPI_COMPILE_FLAGS) master.c $(MPI_LINK_FLAGS) -o master.o
comunica.o: comunica.c comunica.h
	$(CC) -c $(MPI_COMPILE_FLAGS) comunica.c $(MPI_LINK_FLAGS) -o comunica.o
app.o: app.c app.h
	$(CC) -c $(MPI_COMPILE_FLAGS) app.c $(MPI_LINK_FLAGS) -o app.o
app2_g.o: app_g.c app_g.h
	$(CC) -c $(MPI_COMPILE_FLAGS) app_g.c $(MPI_LINK_FLAGS) -o app_g.o
app2_ir.o: app_sp.c app_sp.h
	$(CC) -c $(MPI_COMPILE_FLAGS) app_sp.c $(MPI_LINK_FLAGS) -o app_sp.o

'gcc' -c -I/usr/lib/openmpi/include -I/usr/lib/openmpi/include/openmpi -pthread main.c -pthread -L/usr/lib/openmpi/lib -lmpi -lopen-rte -lopen-pal -ldl -Wl,--export-dynamic -lnsl -lutil -lm -ldl -o main.o
'gcc' -c -I/usr/lib/openmpi/include -I/usr/lib/openmpi/include/openmpi -pthread generate.c -pthread -L/usr/lib/openmpi/lib -lmpi -lopen-rte -lopen-pal -ldl -Wl,--export-dynamic -lnsl -lutil -lm -ldl -o generate.o
'gcc' -c -I/usr/lib/openmpi/include -I/usr/lib/openmpi/include/openmpi -pthread memory.c -pthread -L/usr/lib/openmpi/lib -lmpi -lopen-rte -lopen-pal -ldl -Wl,--export-dynamic -lnsl -lutil -lm -ldl -o memory.o
'gcc' -c -I/usr/lib/openmpi/include -I/usr/lib/openmpi/include/openmpi -pthread statistic.c -pthread -L/usr/lib/openmpi/lib -lmpi -lopen-rte -lopen-pal -ldl -Wl,--export-dynamic -lnsl -lutil -lm -ldl -o statistic.o
'gcc' -c -I/usr/lib/openmpi/include -I/usr/lib/openmpi/include/openmpi -pthread utility.c -pthread -L/usr/lib/openmpi/lib -lmpi -lopen-rte -lopen-pal -ldl -Wl,--export-dynamic -lnsl -lutil -lm -ldl -o utility.o
'gcc' -c -I/usr/lib/openmpi/include -I/usr/lib/openmpi/include/openmpi -pthread initial.c -pthread -L/usr/lib/openmpi/lib -lmpi -lopen-rte -lopen-pal -ldl -Wl,--export-dynamic -lnsl -lutil -lm -ldl -o initial.o
'gcc' -c -I/usr/lib/openmpi/include -I/usr/lib/openmpi/include/openmpi -pthread app.c -pthread -L/usr/lib/openmpi/lib -lmpi -lopen-rte -lopen-pal -ldl -Wl,--export-dynamic -lnsl -lutil -lm -ldl -o app.o
'gcc' -c -I/usr/lib/openmpi/include -I/usr/lib/openmpi/include/openmpi -pthread app2.c -pthread -L/usr/lib/openmpi/lib -lmpi -lopen-rte -lopen-pal -ldl -Wl,--export-dynamic -lnsl -lutil -lm -ldl -o app2.o
'gcc' -c -I/usr/lib/openmpi/include -I/usr/lib/openmpi/include/openmpi -pthread random.c -pthread -L/usr/lib/openmpi/lib -lmpi -lopen-rte -lopen-pal -ldl -Wl,--export-dynamic -lnsl -lutil -lm -ldl -o random.o
'gcc' -c -I/usr/lib/openmpi/include -I/usr/lib/openmpi/include/openmpi -pthread master.c -pthread -L/usr/lib/openmpi/lib -lmpi -lopen-rte -lopen-pal -ldl -Wl,--export-dynamic -lnsl -lutil -lm -ldl -o master.o
'gcc' -c -I/usr/lib/openmpi/include -I/usr/lib/openmpi/include/openmpi -pthread comunica.c -pthread -L/usr/lib/openmpi/lib -lmpi -lopen-rte -lopen-pal -ldl -Wl,--export-dynamic -lnsl -lutil -lm -ldl -o comunica.o
comunica.c: In function âlee_char_y_genera_achivo_instancia_tmpâ:
comunica.c:610: warning: incompatible implicit declaration of built-in function âmallocâ
comunica.c:660: warning: incompatible implicit declaration of built-in function âfreeâ
'gcc' -c -I/usr/lib/openmpi/include -I/usr/lib/openmpi/include/openmpi -pthread rselect.c -pthread -L/usr/lib/openmpi/lib -lmpi -lopen-rte -lopen-pal -ldl -Wl,--export-dynamic -lnsl -lutil -lm -ldl -o rselect.o
'gcc' -c -I/usr/lib/openmpi/include -I/usr/lib/openmpi/include/openmpi -pthread operators.c -pthread -L/usr/lib/openmpi/lib -lmpi -lopen-rte -lopen-pal -ldl -Wl,--export-dynamic -lnsl -lutil -lm -ldl -o operators.o
'gcc' -c -I/usr/lib/openmpi/include -I/usr/lib/openmpi/include/openmpi -pthread app_g.c -pthread -L/usr/lib/openmpi/lib -lmpi -lopen-rte -lopen-pal -ldl -Wl,--export-dynamic -lnsl -lutil -lm -ldl -o app_g.o
'gcc' -c -I/usr/lib/openmpi/include -I/usr/lib/openmpi/include/openmpi -pthread app_sp.c -pthread -L/usr/lib/openmpi/lib -lmpi -lopen-rte -lopen-pal -ldl -Wl,--export-dynamic -lnsl -lutil -lm -ldl -o app_sp.o
'gcc' -I/usr/lib/openmpi/include -I/usr/lib/openmpi/include/openmpi -pthread main.o generate.o memory.o statistic.o utility.o initial.o app.o app2.o random.o master.o comunica.o rselect.o operators.o app_g.o app_sp.o -pthread -L/usr/lib/openmpi/lib -lmpi -lopen-rte -lopen-pal -ldl -Wl,--export-dynamic -lnsl -lutil -lm -ldl -lm -o main