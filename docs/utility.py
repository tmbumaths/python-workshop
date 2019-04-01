def argand(complex_number, vector=False):
    '''
    This function takes a complex number.
    '''
    import matplotlib.pyplot as plt
    from numpy import real, imag
    plt.ylabel('Imaginary')
    plt.xlabel('Real')
    plt.axhline(y=0, color='black')
    plt.axvline(x=0, color='black')
    
    z = complex_number
    x = real(z)
    y = imag(z)
    plt.plot(x,y, 'bo')

    if vector: 
        plt.quiver(0, 0, x, y, angles='xy', scale_units='xy', scale=1, color='g')

