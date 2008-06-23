% Compiles all the private routines
%
% assumes located in toolbox root directory
%
% USAGE
%  toolboxCompile
%
% INPUTS
%
% OUTPUTS
%
% EXAMPLE
%
% See also
%
% Piotr's Image&Video Toolbox      Version 2.0
% Copyright 2008 Piotr Dollar.  [pdollar-at-caltech.edu]
% Please email me if you find bugs, or have suggestions or questions!
% Licensed under the Lesser GPL [see external/lgpl.txt]

dir = 'classify/private/';
mex([dir 'meanShift1.c'],           '-outdir', dir );

dir = 'images/private/';
mex([dir 'assignToBins1.c'],        '-outdir', dir );
mex([dir 'histc2c.c'],              '-outdir', dir );
mex([dir 'maskEllipse1.c'],         '-outdir', dir );
mex([dir 'nlfiltersep_max.c'],      '-outdir', dir );
mex([dir 'nlfiltersep_sum.c'],      '-outdir', dir );
mex([dir 'nlfiltersep_blocksum.c'], '-outdir', dir );

% requires c++ compiler
try
  dir = 'external/dijkstra/private/';
  mex([dir 'fibheap.cpp'],            '-outdir', dir );
end
