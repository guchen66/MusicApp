   M S B A M L   `   `   `  ����C  ?MusicApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:MusicApp.ViewsMusicApp.Views  5   	   F BMusic.Utils, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullL5clr-namespace:Music.Utils.Common;assembly=Music.UtilsMusic.Utils.Common 5   	       MusicApp.Views.MainView   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:MusicApp.Views     5   	   _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5   	   Bregion5clr-namespace:Music.Utils.Common;assembly=Music.Utils  5   	   [ WPrism.DryIoc.Wpf, Version=8.1.97.5141, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59T	 PPrism.Wpf, Version=8.1.97.5141, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59&prismhttp://prismlibrary.com/  	 5	   	   _
 [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a:md1http://materialdesigninxaml.net/winfx/xaml/themes 
 5   	   ! 	 Prism.Mvvm.ViewModelLocator    AutoWireViewModel  True5
   	    � Title$ MainView��5   	   $	��720��6   $
��1100��6'    � WindowStyle$
 None=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � Icon 5      �� 5   
   -   5        	loginIcon�� �� 	UriSource$ /favicon.ico?�5   )    � 	Resources 5       �� 
TargetType   CloseButtonTemplate �� CornerRadius	 �� Triggers
 P� Property P� Value �� 
TargetName �� Property �� Value��%�  &	        �� 5   
   " ��6   .R�5      �� $
��back��6.   
������ $ 0 5 0 0��6:   ._�5      F� +����        � �  � �     � � �     	
�������$��1��5      $��Center=�5      $��Center=�5      5      	 5      P� 5      
 �@J�IsMouseOver$
 True��61   . �5      �� $
 back��6    � �� �	#22FFFFFF6E   5      P� 5       
 � ��$
 True��6/   . �5!      �� $
 back��6    � �� �	#44FFFFFF6E   5"      5%      5&      .��5'      �  � ColumnDefinitions 5(   
   �� 5)      $	��220 �6   �� 5*      .+�5-   
   ��  K� ZIndex$ 1��6   ���#fff J� Effect 5.      3  -System.Windows.Media.Effects.DropShadowEffect  5/         Color$ #848484��6#      
BlurRadius$ 20Q�63      ShadowDepth$ 10Q�6C      Opacity$	 0.1Q�6T   51      � 53   
   $ 1��6    � Cursor$
 Hand��6     � RowDefinitions 56      �� 57      $��80 �6    �� 58      .+�5:      �� -   5         ��Name$ DraggableArea��5:      
�������$ -1��5<      
�������$��0 0 0 1q�5=   $   $��80��5>      $	��Top=�5?      *  $Microsoft.Xaml.Behaviors.Interaction   Triggers 5@      +  %Microsoft.Xaml.Behaviors.EventTrigger  5A         	EventName$ MouseLeftButtonDown��6%   *  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 5B      2  ,Microsoft.Xaml.Behaviors.InvokeCommandAction     Command 60   �� *DragMoveCommand+5C      ._�5E      �� $��	音乐App��6   $��Center=�6)   $��Center=�5F      $��22(�5G      $��Light"�6"   5H      �� 5K      $��1��6   .+�5M      �� $	��200��6   $��40��6%   $��	20 20 0 0q�61   $��16(�5N      $
��Left=�6'   $��0q�5P      
������ ��5O      �� *OpenHomeCmd+.��5Q      ��  �� Orientation$ 
Horizontal=�6!   .+�5S      �� $	����6$   $��26(�64   $��../Assets/Fonts/#iconfont)�6B   �� 5U      $��我的主页��6$   $��20 0 0 0q�60   $��Center=�6B   5V      5W      9� 5Y       9� 
IsExpanded$ False��6   $	��200��6.   $��0 20 0 0q�6:   $��16(�5Z      $
��Left=�6)   $��0q�5[      
������ ��5\      �� 5]      $ 
Horizontal=�6%   .+�5^      �� $	����6(   $��26(�68   $��26��6F   $��../Assets/Fonts/#iconfont)�5_   $   ���#8484846K   �� 5`      $��我的收藏��6(   $��20 0 0 0q�64   $��Center=�6F   ���#8484845a   $   5b      .��5e      �� .+�5f      �� $��70 0 0 0q�6!   $��0q�5h   !   
������ $
 Hand��6N   ��5g   !   �� *OpenCollectionCmd+.��5i      �� .+�5k   "   �� $��	林奕匡��6,   $��20 0 0 0q�67   $��Center=�6I   ���#8484845l   $   5m      5n      �� 5o      $��70 0 0 0q�6!   $��0q�5q   !   
������ $
 Hand��6N   ��5p   !   �� *OpenCollectionCmd+.��5r      �� .+�5s   "   �� $��	陈柏宇��6,   $��20 0 0 0q�67   $��Center=�6I   ���#8484845t   $   5u      5v      �� 5w      $��70 0 0 0q�6!   $��0q�5y   !   
������ $
 Hand��6N   ��5x   !   �� *OpenCollectionCmd+.��5z      �� .+�5{   "   �� $��东山少爷��6,   $��20 0 0 0q�68   $��Center=�6J   ���#8484845|   $   5}      5~      5      5�      �� 5�      $	��200��6   $��40��6%   $��	20 20 0 0q�61   $��16(�5�      $
��Left=�6'   $��0q�5�      
������ ��5�      �� *OpenDownLoadCmd+.��5�      �� $ 
Horizontal=�6!   .+�5�      �� $	����6$   $��26(�64   $��../Assets/Fonts/#iconfont)�5�   $   ���#8484846K   �� 5�      $��本地下载��6$   $��20 0 0 0q�60   $��Center=�6B   ���#8484845�   $   5�      5�      �� 5�      $	��200��6   $��40��6%   $��	20 20 0 0q�61   $��16(�5�      $
��Left=�6'   $��0q�5�      
������ ��5�      �� *
OpenSetCmd+.��5�      �� $ 
Horizontal=�6!   .+�5�      �� $	����6$   $��26(�64   $��../Assets/Fonts/#iconfont)�6C   ���#8484846j   �� 5�      $��设置��6$   $��20 0 0 0q�6.   $��Center=�6@   ���#8484845�   $   5�      5�      �� 5�      $	��200��6   $��40��6%   $��	20 20 0 0q�61   $��16(�5�      $
��Left=�6'   $��	MusicView��5�      $��0q�5�      
������ ��5�      �� *
MusicCmd+.��5�      �� $ 
Horizontal=�6!   .+�5�      �� $	����6$   $��26(�64   $��../Assets/Fonts/#iconfont)�5�   $   ���#8484846K   �� 5�      $��Music��6$   $��20 0 0 0q�61   $��Center=�6C   ���#8484845�   $   5�      5�      �� 5�      $	��200��6   $��40��6%   $��	20 20 0 0q�61   $��16(�5�      $
��Left=�6'   $��	MusicView��5�      $��0q�5�      
������ $
 Hand��6F   ��5�      �� *OpenHelpCmd+.��5�      �� $ 
Horizontal=�6!   .+�5�      �� $	����6$   $��26(�64   $��../Assets/Fonts/#iconfont)�5�   $   ���#8484846K   �� 5�      $��帮助文档��6$   $��20 0 0 0q�60   $��Center=�6B   ���#8484845�   $   5�      5�      �� 5�      $	��200��6   $��40��6%   $��	20 20 0 0q�61   $��16(�5�      $
��Left=�6'   $��返回��5�   ;   $��0q�5�      
������ $
 Hand��6F   ��5�      �� *GoBackCommand+5�      5�      5�      � 5�   
   $��1��6   
������� 5�      �� 5�      $��80 �6    �� 5�      �� 5�      $	��100 �6    .+�5�      �� $��0��6   $  Music.Utils.Common.RegionNames   HeaderRegion! 	 Prism.Regions.RegionManager    
RegionName#  Z 6*   �� 5�      
�������$��0 0 0 1q�6,   �� 5�      $��1��6   !   ContentRegion#  Z! 6*   �� 5�      $��2��6   "   FooterRegion#  Z" 6*    5�        5�      $ MouseLeftButtonDown��6%   . 5�         60   �� *DragMoveCommand+5�      5�      5�      5�      5�      