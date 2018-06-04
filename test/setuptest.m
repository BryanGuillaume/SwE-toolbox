function setuptest(porwb, torf, matorimg)

	testname = [porwb '_' torf '_' matorimg]

	disp(['Test case generating: ' testname])

	% Move into the test folder and add the path to tests.
	cd(['/swe/test/data/test_' testname]);
	addpath('/swe');
	addpath('/swe/test');

	% Reset the seed
	load('/swe/test/data/seed.mat');
	rand('state',seed);

	% Load the test design and run it.
	load('design.mat');
	swe_run_design(design);

	% Load the generated SwE file and run it.
	load('SwE.mat');
	swe_cp_WB(SwE);

end