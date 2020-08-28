#include "hls_math.h"
#include "ap_fixed.h"

using namespace std;


#include "sen.h"


data_t sen(data_t Entrada){

    float x = Entrada;
    return sin(Entrada);

}
