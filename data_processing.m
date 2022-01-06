%% MASA Data Processing GUI
function[options] = data_processing(options)

for j = 1:options.num_figures
    if j<=length(options.figures)
        if isempty(options.figure)
            figure('Name', char(options.figures(j)));
        else
            figure(gcf);
        end
        hold(gca, 'on');
        for i = 1:length(options.engine_controller.pts.number)
            plot(gca, 1:options.data_length, table2array(options.data(:,string(options.engine_controller.pts.prefix+string(num2str(options.engine_controller.pts.number(i)))+options.engine_controller.pts.suffix))),'displayname',options.engine_controller.pts.name{i});
        end
        legend(gca);
    else
        figure('Name', string(j));
    end
end