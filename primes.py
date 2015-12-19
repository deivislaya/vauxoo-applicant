"""
Your module documentation here
"""


class PrimeClass(object):
    """
    Your class documentation here.
    """
    def is_prime(self, num_int):
        """
        Funcion para verificar si es primo.
        """
        primo = True
        if isinstance(num_int, int):
            # si es menos que 2 no es primo, por lo tanto devolvera Falso
            if num_int < 2:
                primo = False
                return primo
            # un rango desde el dos hasta el numero que nosotros elijamos
            for inter in range(2, num_int):
                # si el resto da 0 no es primo, por lo tanto devuelve Falso
                if num_int % inter == 0:
                    primo = False
                    return primo
        else:
            primo = False
            return primo
        return primo    # de lo contrario devuelve Verdadero
