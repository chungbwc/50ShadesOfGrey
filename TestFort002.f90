    program grey
    use gnufor2
    implicit none

    integer, parameter  :: Nm = 800
    integer             :: rgb(3, Nm, Nm)
    integer             :: i, j, k
    integer             :: shades
    integer             :: step
    integer             :: c

    shades = 50
    step = Nm/shades

    do i = 1, shades
        c = (i-1)*255/shades
        do j = (i-1)*step, i*step
            do k = 1, Nm
                rgb(1,j,k) = c
                rgb(2,j,k) = c
                rgb(3,j,k) = c
            end do
        end do
    end do

    call image(rgb, pause=-1.0, persist='no')
    end program grey
