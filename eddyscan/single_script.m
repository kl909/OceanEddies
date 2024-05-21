% Find all anticyclonic eddies
ssh = ncread('Elevation2d_00500.h5_elev.nc','Band1'); % specify the exact nc timestep file i
landval = max(ssh(:));
ssh(ssh == landval) = NaN;
lat = ncread('Elevation2d_00500.h5_elev.nc', 'lat');
lon = ncread('Elevation2d_00500.h5_elev.nc', 'lon');
lon(lon >= 180) = lon(lon >= 180)-360;
areamap = load('../data/area_map.mat'); % Load areamap to compute eddies' surface areas
eddies = scan_single(ssh, lat, lon, 'anticyc', 'v2', areamap);