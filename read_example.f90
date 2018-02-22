  implicit none
  integer(8) nh0
  real,allocatable :: hdata0(:,:)
  
  open(10,file='halo_xyz_vz_tianzero.dat',status='old',access='stream',action='read')
  read(10)nh0
  allocate(hdata0(4,nh0))!hdata0(1:3,i):xyz (the Cartesian coordinates of ith halos);
  read(10)hdata0         !hdata0(4,i):vz (the z-direction velocity of ith halo)
  close(10)
 
  end

  !!using od to check data
  !od -j8 -w16 -f halo_xyz_vz_tianzero.dat |head
