%set up ssh data input script
NetCDF_files_path = '../modern/hdf5/elevation/el_7';
ssh_NetCDF_name = 'Band1';
lat_NetCDF_name = 'lat';
lon_NetCDF_name = 'lon';
ssh_save_path = 'data';
set_up_ssh_data(NetCDF_files_path, ssh_NetCDF_name, lat_NetCDF_name, lon_NetCDF_name, ssh_save_path);