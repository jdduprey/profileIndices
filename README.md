# profileIndices
Profile time indices for the RCA Shallow Profilers


*** Profile Indices were compiled using the script profileIndexer.py and are automatically updated and pushed to github daily.
Each profile index, starting from 1 and adding cumulatively through time, includes a time for 'start', corresponding to the start 
of the upcast, 'peak', corresponding to the shallowest depth of the profile, which is also equal to the end of the upcast and the 
start of the downcast, and 'end', corresponding to the end of the downcast.


Example Usage:
to append to current file with new profiles only specify 'append' in --fileCreation
	python3 ./profileIndexer.py --profiler 'RS03AXPS' --dataSource 'zarr' --fileCreation 'append'

to create new file, specify 'create' in --fileCreation
	python3 ./profileIndexer.py --profiler 'RS03AXPS' --dataSource 'zarr' --fileCreation 'create'

to create a test file for a specified time range, specify 'test' in --fileCreation, and specify start and end dates with --startDate and --endDate
	python3 ./profileIndexer.py --profiler 'RS03AXPS' --dataSource 'zarr' --fileCreation 'test' --startDate '2020-08-04' --endDate '2022-03-10'

to use a local file, specify file path in --dataSource
	python3 ./profileIndexer.py --profiler 'RS01SBPS' --dataSource 'SBPS_current.nc' --fileCreation 'test' --startDate '2020-08-04' --endDate '2020-08-10'
