   M S B A M L   `   `   `  ����C  ?MusicApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:MusicApp.ViewsMusicApp.Views  5   	       MusicApp.Views.TestView   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:MusicApp.Views     5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a:md1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  TestView��5	   	   $	��450��6   $	��800��6'    � 	Resources 5
         TextBoxPlaceHolder �� 
TargetType �� Property �� Value-  'System.Windows.Input.KeyboardNavigation �� 
TargetType �� CornerRadius
 � Tag J� IsHitTestVisible	 �� Triggers
 P� Property P� Value �� 
TargetName��%�  &	        �� 5   
   " ��6+   .�5      ��  � ��$ 2q�6(   �� 5       � �� �	#FFFFFFFF6+   �� 5       � �� �	#FF0000006+   �� 5       � �� �	#FFABADB36,   �� 5       � ��$ 1q�60   �� 5       �@ TabNavigation$
 None=�6A   �� 5       � ��$
 Left=�6;   �� 5       �@�FocusVisualStyle 61   Z� �� 5       �@J�	AllowDrop$
 true��6*   �� 5       �@��PanningMode$ VerticalFirst=�69   �� 5       �@��IsFlicksEnabled$ False��67   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� $��Border��6!   $ 2��5      #��z��5      #��z��5      #��z��5      ._�5      � .+�5    "   �� $��ContentElement��5!      $��0q�5"      
������ 
������ $��0q�5%      ._�5&   &   �� $��PART_ContentHost��63   $��Center=�6K   5'   #   �� 5(   "   $��PlaceHolder��6,   $��5,0,0,0q�6?   #��z 5)      $��Center=�5*      
�������$ False��5,      $y�	Collapsed=�5-      5.      5/      	 50      P� 51      
 � ��$  ��66   . �52   "   �� $ PlaceHolder��6)    � y�$ Visible=�6X   53      55      57      58      59      .��5:      � .+�5;   
   �� $	��200��6   $��30��6   #��[  5<      $ Enter Your Text Here��5=      5>      5?      