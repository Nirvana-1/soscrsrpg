   M S B A M L   `   `   `  ����A  =Engine, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE/clr-namespace:Engine.ViewModels;assembly=EngineEngine.ViewModels  5   	   A =WPFAPP, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullclr-namespace:WPFAPPWPFAPP 5   	      WPFAPP.TradeScreen   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   F
viewModels/clr-namespace:Engine.ViewModels;assembly=Engine     5   	   &localclr-namespace:WPFAPP     5   	     � WindowStartupLocation$  CenterOwner=�5
   	   $
��11pt(�5   	    � Title$ TradeScreen��5   	   $	��450��6   $	��640��6*   .��5      � $��10q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $��* �6   .+�5   
   �� $��0��6   $��0��6   $��2��5      $��Center=�5      ��5      �� *CurrentTrader.Name+�� 5    
   $��1��6   $��0��6   $��Center=�5!      $��Your Inventory��5"      �� 5$   
   $��1��6   $��1��6   $��Center=�5%      $��Trader's Inventory��5&      &   System.Windows.Controls.DataGrid  5(   
   $��2��6   $��0��6    $��10q�5)         AutoGenerateColumns .     HeadersVisibility$ Column=�5,         CanUserAddRows .     CanUserDeleteRows .  "   VerticalScrollBarVisibility$
 Auto=�5/      ��5*      �� * CurrentPlayer.GroupedInventory+	   Columns	 50      0  *System.Windows.Controls.DataGridTextColumn  51      ,  &System.Windows.Controls.DataGridColumn
   Header$
 Description��6%      
IsReadOnly .    Width5  /System.Windows.Controls.DataGridLengthConverter$ * 53   %   1  +System.Windows.Controls.DataGridBoundColumn   Binding 54   %   ��  �� Path$ 	Item.Name�  55      $	
 Qty��6%    . $
 Auto 57   %    58   %   �� *
Quantity+  59      $
 Price��6%    . $
 Auto 5;   %    5<   %   �� $ 
Item.Price�4  .System.Windows.Controls.DataGridTemplateColumn  5=         MinWidth$ 75Q�6)      CellTemplate 5>      �� 5?      .R�5@      �� -   5        $��55��5A   %   $��Sell 1��5B   %   5C      5E      5G        5H   
   $��2��6   $��1��6    $��10q�5I       .  $ Column=�5L       .   .  $
 Auto=�5O      ��5J      �� * CurrentTrader.GroupedInventory+	 5P        5Q      $
 Description��6%    . $ * 5S   %    5T   %   �� $ 	Item.Name�  5U      $	
 Qty��6%    . $
 Auto 5W   %    5X   %   �� *
Quantity+  5Y      $
 Price��6%    . $
 Auto 5[   %    5\   %   �� $ 
Item.Price�  5]      $ 75Q�6)    5^      �� 5_      .R�5`      �� -   5        $��55��5a   %   $��Buy 1��5b   %   5c      5e      5g      �� 5h   
   -   5        $��3��5h      $��1��6   $��Right=�5i      $��75��5j      $��Close��5k      5l      5n      5o      