/*----------------------------------------------------------------------------*/
/* app.h - rutinas relacionadas con el problema				                  */
/*----------------------------------------------------------------------------*/

#include <stdlib.h>

#include "memory.h"
#include "sga.h"
/*
#include "app_g.h"
*/
#include "app_sp.h"
#include "app_cp.h"
#include "app2_g.h"

/*
 * Función principal de lectura del archivo
 */
int app_leearchivo(int tipo_problema, char *nombrearchivo, int rank_actual) { 
    //Problema de Corte de Pieza Guillotina
    if(tipo_problema == 0){ 
        if(app2_leearchivo_g(nombrearchivo, rank_actual)) return -1;
        else return 0;
    } 
    //Problema de Strip Packing
    else if(tipo_problema == 1) { 
        if(app_leearchivo_sp(nombrearchivo, rank_actual)) return -1;
        else return 0;
    }
    //Problema de Corte de Piezas Guillotina 2.0
    else if(tipo_problema == 2) { 
        if(app_leearchivo_cp(nombrearchivo, rank_actual)) return -1;
        else return 0;
    } else return 0;
}

/*
 * Función Objetivo general, llama a la función objetivo de acuerdo al problema
 */
void app_objfunc(int tipo_problema, struct individual *critter) {
    //Problema de Corte de Pieza Guillotina
    if (tipo_problema == 0) app2_objfunc_g(critter);
    //Problema de Strip Packing
    else if (tipo_problema == 1) app_objfunc_sp(critter);
    //Problema de Corte de Piezas Guillotina 2.0
    else if (tipo_problema == 2) app_objfunc_cp(critter);
}

void app_objfuncfinal(int tipo_problema, struct bestever *critter) {
    if (tipo_problema == 0) app2_objfuncfinal_g(critter);
        //Problema de Strip Packing
    else if (tipo_problema == 1) app_objfuncfinal_sp(critter);
        //Problema de Corte de Piezas Guillotina 2.0
    else if (tipo_problema == 2) app_objfuncfinal_cp(critter);
}

/*
 * Función que libera variables del problema
 */
void app_free(int tipo_problema) {
    //Problema de Corte de Pieza Guillotina
    if (tipo_problema == 0) app2_free_g();
    //Problema de Strip Packing
    else if (tipo_problema == 1) app_free_sp();
    //Problema de Corte de Piezas Guillotina 2.0
    else if (tipo_problema == 2) app_free_cp();
}

/*
 * Función que imprime los resultados del problema
 */
void app_genera_resultados_problema(int corrida, int tipo_problema, char *nombrearchivo) {
    //Problema de Corte de Pieza Guillotina
    if (tipo_problema == 0) app2_genera_resultados_problema_g(corrida, tipo_problema, nombrearchivo);
    //Problema de Strip Packing
    else if (tipo_problema == 1) app_genera_resultados_problema_sp(corrida, tipo_problema, nombrearchivo);
    //Problema de Corte de Piezas Guillotina 2.0
    else if (tipo_problema == 2) app_genera_resultados_problema_cp(corrida, tipo_problema, nombrearchivo);
}
