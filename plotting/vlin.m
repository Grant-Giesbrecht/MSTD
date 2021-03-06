function vlin(x, varargin)
%VLIN	Displays a horizontal line on the current plot. 
%
%	VLIN(X) Draws a horizontal line at the value specified by X.
%
%	VLIN(X, S) Draws a vertical line at the value specified by X and
%	applies S, where S is a character string specifying line options. Valid
%	options for S are the same as in the built-in MATLAB function line().
%
%	See also HLIN, LINE.

    yl = ylim;
	
	% If HandleVisibility option is not set, add it as false.
	if ~cellContains(varargin, 'HandleVisibility', true) 
		varargin{end+1} = 'HandleVisibility';
		varargin{end+1} = 'off';
	end
	
    line([x, x], [yl(1), yl(2)], varargin{:});
end