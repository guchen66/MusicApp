   M S B A M L   `   `   `  ����  Music.UI    Music.UI.Views.HomeView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      T PPrism.Wpf, Version=8.1.97.5141, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59$prismhttp://prismlibrary.com/  5      _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a:md1http://materialdesigninxaml.net/winfx/xaml/themes  5	      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5
      !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel  True5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��10q�6.   .+�5      �� $��40��6   $	��120��6!   +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 20��6-    #  MaterialDesignFlatLightBgButton#��[  5       � Cursor$
 Hand��6z   ��5   O   Z� ��5   R   �� *ClickPlayAllCommand+��5      �� 5       �� 
StartPoint$ 0,0.5&�6*    �� EndPoint$ 1,0.5&�6=   .��5      �  � Offset$ 0Q�6'    � Color$ #4facfe��62   � 5      $ 1Q�6'   $ #00f2fe��62   5      .��5      �� $ 
Horizontal=�6   .+�5      '  !MaterialDesignThemes.Wpf.PackIcon  	   Kind$	 PlayOutline=�6"   $��30��65   $��30��6A   
�������6L   �� 5      $��播放全部��6    $��Center=�6,   
�������6G   5      5      �� 5      $��40��6   $	��120��6!   $ 20��6-   $��20,0,0,0q�6g   #��[  5       ��5   P   Z� ��5    R   �� *ClickDownloadAllCommand+��5!      �� 5"      $ 0,0.5&�6*   $ 1,0.5&�6=   .��5#      � $ 0Q�6'   $ #4facfe��62   � 5$      $ 1Q�6'   $ #00f2fe��62   5%      .��5'      �� $ 
Horizontal=�6   .+�5(        $	 Download=�6"   $��25��62   $��25��6>   
�������6I   �� 5)      $��下载全部��6    $��Center=�6,   
�������6G   5*      5+      �� 5,      $��40��6   $	��120��6!   $ 20��6-   #��[  5-      $��20,0,0,0q�6i   ��6R   Z� *  $Microsoft.Xaml.Behaviors.Interaction
   Triggers
 5.      +  %Microsoft.Xaml.Behaviors.EventTrigger  5/         	EventName$  PreviewMouseLeftButtonDown��6%   *  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 50      2  ,Microsoft.Xaml.Behaviors.InvokeCommandAction     Command 60   �� *OpenPopupCommand+51      ��53      �� 54      $ 0,0.5&�6*   $ 1,0.5&�6=   .��55      � $ 0Q�6'   $ #4facfe��62   � 56      $ 1Q�6'   $ #00f2fe��62   57      .��59      � $	��120��6   $��40��6#   $��Center=�6/   $��Center=�6L   
������ .+�5:      �� $ 
Horizontal=�6!   $��Center=�6:   .+�5;        $	 PlusBoxOutline=�6&   $��25��6<   $��25��6H   
�������$��Center=�6f   �� 5<      $��	添加到��6$   $��Center=�6/   
�������6J   5=      '  !MaterialDesignThemes.Wpf.PopupBox  5>      $	��120��6"   $��40��6.      	PopupMode$ Click=�6:      PlacementMode$ BottomAndAlignCentres=�6M    J� Opacity$ 0Q�6s      PopupContent 5?      o� 5@      ��6#   �� *Menus+��5A   "   �� 5B   &   .R�5C   *   �� $ Vertical=�65   5D   '   5F      5H      5I      5K      �� 5L      -   5         ��Name$ BtnAddLocal��5L   y   $��40��6   $	��120��6!   $ 20��6-   $��20,0,0,0q�6g   #��[  5M      ��5L   P   Z� ��5M   R   �� *ClickImportLocalCommand+��5O      �� 5P      $ 0,0.5&�6*   $ 1,0.5&�6=   .��5Q      � $ 0Q�6'   $ #4facfe��62   � 5R      $ 1Q�6'   $ #00f2fe��62   5S      .��5U      �� $ 
Horizontal=�6   .+�5V      �� $��添加本地音乐��6    $��Center=�6.   
�������6I   5W      5X      5Y      &	   System.Windows.Controls.DataGrid	  5Z   
   -   5         	 Name$	 dgv��5\      $��1��5Z       	  AutoGenerateColumns$ False��5[      
������  	  CanUserReorderColumns$ False��5]       	  CanUserAddRows$ False��5^   6    	  CanUserSortColumns$ False��6M    	  
IsReadOnly$
 True��6h   ��6   �� *
MusicInfos+
 5_        5`      $ MouseDoubleClick��6!   . 5a         6,   �� *PrePlayCommand+   CommandParameter 5b   ,   �� *SelectedItem+ �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorType DataGrid5c       	  Columns 5e      0
  *System.Windows.Controls.DataGridTextColumn
  5f      ,  &System.Windows.Controls.DataGridColumn   Header$ 	歌曲名��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ 4* 62   1  +System.Windows.Controls.DataGridBoundColumn    Binding  6=   �� *Name+6X   
  5g      $ 歌手��6%   $ 2* 61     6<   �� *	Artists+6Z   
  5h      $ 专辑��6%   $ 2* 61     6<   �� *Album+6X   
  5i      $ 来源��6%   $ 1* 61     6<   �� *
SourceName+6]   4  .System.Windows.Controls.DataGridTemplateColumn  5j      $	 120 6)   $ 操作��65   !   CellTemplate! 5k      �� 5l      5n      5p      5r      5s      5t      