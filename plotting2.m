Average_Sender_Time=[100,140,180,220,260,300];
successfuly_sent_data = [1009, 1009, 1008, 1009, 1009, 1008];
blocked_data = [2277, 1272,732 ,411 , 180, 25];
total_sent_data_=successfuly_sent_data+blocked_data;
sender1=[360,336,341,328,337,336];
sender2=[325,350,334,340,333,337];
sender3=[324,323,333,341,339,335];
blocked_1=[729,426,236,143,58,8];
blocked_2=[766,412,247,135,63,7];
blocked_3=[782,434,249,133,59,10];
figure;     
% plot(Average_Sender_Time,successfuly_sent_data_3,'o-',"Marker",'o') ;
% axis([100,300,1000,1005]);
% Create a bar plot
plot(Average_Sender_Time, sender3, 'bo-', 'LineWidth', 1, 'MarkerSize', 2, 'MarkerFaceColor', 'b');
hold on;
plot(Average_Sender_Time, blocked_3, 'go-', 'LineWidth', 1, 'MarkerSize', 2, 'MarkerFaceColor', 'g');
grid on;

% Add labels to data points
for i = 1:length(Average_Sender_Time)
    text(Average_Sender_Time(i), sender3(i), num2str(sender3(i)), 'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom');
    text(Average_Sender_Time(i), blocked_3(i), num2str(blocked_3(i)), 'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom');
end
% Add axis labels and title
xlabel('Average Sender Time');
ylabel('Number Of messages');
title('Sent and Blocked for high piriority task(3)');
grid on;
 xlim([50,350]);

% Add legend
legend('Succesfully Sent', 'Blocked messages');
%%
Average_Sender_Time=[100,140,180,220,260,300];
successfuly_sent_data = [1009, 1009, 1008, 1009, 1009, 1008];
blocked_data = [2277, 1272,732 ,411 , 180, 25];
total_sent_data_=successfuly_sent_data+blocked_data;

plot(Average_Sender_Time, successfuly_sent_data, 'b-', Average_Sender_Time, blocked_data, 'r-');
for i = 1:length(Average_Sender_Time)
    text(Average_Sender_Time(i), successfuly_sent_data(i), num2str(successfuly_sent_data(i)), 'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom');
    text(Average_Sender_Time(i), blocked_data(i), num2str(blocked_data(i)), 'HorizontalAlignment', 'center', 'VerticalAlignment', 'bottom');
end
legend('successfuly sent messages', 'Blocked messages');
xlabel('Average Sender Time');
ylabel('Number Of Messages');
title("Total Sent And Blocked messages");
 xlim([50,350]);
    
grid on;
%% 
figure;
bar(Average_Sender_Time, [total_sent_data_', blocked_data'], 'grouped');
legend('total sent messages', 'Blocked messages');
xlabel('Average Sender Time');
ylabel('Number Of Messages');
title("Total Sent And Blocked messages");
 xlim([50,350]);