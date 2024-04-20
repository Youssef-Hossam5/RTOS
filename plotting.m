Average_Sender_Time=[100,140,180,220,260,300];
successfuly_sent_data_3 = [1002, 1002, 1002, 1001, 1001, 1002];
blocked_data_3 = [2277, 1285, 747, 422, 189, 49];
total_sent_data_3=successfuly_sent_data_3+blocked_data_3;
sender1_3=[336,354,339,326,337,336];
sender2_3=[348,318,322,333,335,330];
sender3_3=[318,330,341,342,329,336];
blocked_1_3=[754,409,243,148,59,11];
blocked_2_3=[745,442,259,142,60,22];
blocked_3_3=[778,434,245,132,70,16];
figure;     
% plot(Average_Sender_Time,successfuly_sent_data_3,'o-',"Marker",'o') ;
% axis([100,300,1000,1005]);
% Create a bar plot
plot(Average_Sender_Time, sender1_3, 'bo-', 'LineWidth', 1, 'MarkerSize', 2, 'MarkerFaceColor', 'b');
hold on;
plot(Average_Sender_Time, blocked_1_3, 'go-', 'LineWidth', 1, 'MarkerSize', 2, 'MarkerFaceColor', 'g');
grid on;

% Add labels to data points
for i = 1:length(Average_Sender_Time)
    text(Average_Sender_Time(i), sender1_3(i), num2str(sender1_3(i)), 'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom');
    text(Average_Sender_Time(i), blocked_1_3(i), num2str(blocked_1_3(i)), 'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom');
end
% Add axis labels and title
xlabel('Average Sender Time');
ylabel('Number Of messages');
title('Sent and Blocked for low piriority task(1)');
grid on;
 xlim([50,350]);

% Add legend
legend('Succesfully Sent', 'Blocked messages');
%% 
figure;
bar(Average_Sender_Time, [successfuly_sent_data', blocked_data'], 'grouped');
legend('successfuly sent messages', 'Blocked messages');
xlabel('Average Sender Time');
ylabel('Number Of Messages');
title("Total Sent And Blocked messages");
 xlim([50,350]);
 %%
 
plot(Average_Sender_Time, total_sent_data_, 'b-', Average_Sender_Time, blocked_data, 'r-');
for i = 1:length(Average_Sender_Time)
    text(Average_Sender_Time(i), total_sent_data_(i), num2str(total_sent_data_(i)), 'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom');
    text(Average_Sender_Time(i), blocked_data(i), num2str(blocked_data(i)), 'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom');
end
legend('total sent messages', 'Blocked messages');
xlabel('Average Sender Time');
ylabel('Number Of Messages');
title("Total Sent And Blocked messages");
 xlim([50,350]);