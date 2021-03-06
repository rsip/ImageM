classdef CloseImageAction < imagem.gui.actions.CurrentImageAction
%EXITACTION Close the application
%
%   output = CloseImageAction(input)
%
%   Example
%   CloseImageAction
%
%   See also
%
%
% ------
% Author: David Legland
% e-mail: david.legland@grignon.inra.fr
% Created: 2011-12-02,    using Matlab 7.9.0.529 (R2009b)
% Copyright 2011 INRA - Cepia Software Platform.

methods
    function this = CloseImageAction(viewer, varargin)
        % calls the parent constructor
        this = this@imagem.gui.actions.CurrentImageAction(viewer, 'closeImage');
    end
end

methods
    function actionPerformed(this, varargin)
%         disp('Close image action');
        
        viewer = this.viewer;
        doc = viewer.doc;
        
        viewer.close();
        
        if isempty(getViews(doc))
            app = viewer.gui.app;
            removeDocument(app, doc);
            
        end
    end
end

end