   M S B A M L   `   `   `  ����C  ?MusicApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:MusicApp.ViewsMusicApp.Views  5      C ?Music.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA.clr-namespace:Music.UI.Views;assembly=Music.UIMusic.UI.Views 5          MusicApp.Views.HomeView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .localclr-namespace:MusicApp.Views     5      @views.clr-namespace:Music.UI.Views;assembly=Music.UI     5      [ WPrism.DryIoc.Wpf, Version=8.1.97.5141, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59T PPrism.Wpf, Version=8.1.97.5141, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59&prismhttp://prismlibrary.com/   5	      _	 [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a:md1http://materialdesigninxaml.net/winfx/xaml/themes 	 5      _
 [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors 
 5      !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel  True5
      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��10q�6.   .+�5      �� $��40��6   $	��120��6!   + 	 %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 20��6-    #  MaterialDesignFlatLightBgButton#��[  5       � Cursor$
 Hand��6z   ��5   O   Z� ��5   R   �� *ClickPlayAllCommand+��5      �� 5       �� 
StartPoint$ 0,0.5&�6*    �� EndPoint$ 1,0.5&�6=   .��5      �  � Offset$ 0Q�6'    � Color$ #4facfe��62   � 5      $ 1Q�6'   $ #00f2fe��62   5      .��5      �� $ 
Horizontal=�6   .+�5      ' 	 !MaterialDesignThemes.Wpf.PackIcon  	   Kind$	 PlayOutline=�6"   $��30��65   $��30��6A   
�������6L   �� 5      $��播放全部��6    $��Center=�6,   
�������6G   5      5       �� 5!      $��40��6   $	��120��6!   $ 20��6-   $��20,0,0,0q�6g   #��[  5"      ��5!   P   Z� ��5"   R   �� *ClickDownloadAllCommand+��5#      �� 5$      $ 0,0.5&�6*   $ 1,0.5&�6=   .��5%      � $ 0Q�6'   $ #4facfe��62   � 5&      $ 1Q�6'   $ #00f2fe��62   5'      .��5)      �� $ 
Horizontal=�6   .+�5*        $	 Download=�6"   $��25��62   $��25��6>   
�������6I   �� 5+      $��下载全部��6    $��Center=�6,   
�������6G   5,      5-      �� 5.      $��40��6   $	��120��6!   $ 20��6-   #��[  5/      $��20,0,0,0q�6i   ��6R   Z� * 
 $Microsoft.Xaml.Behaviors.Interaction
   Triggers
 50      + 
 %Microsoft.Xaml.Behaviors.EventTrigger  51         	EventName$  PreviewMouseLeftButtonDown��6%   * 
 $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 52      2 
 ,Microsoft.Xaml.Behaviors.InvokeCommandAction     Command 60   �� *OpenPopupCommand+53      ��55      �� 56      $ 0,0.5&�6*   $ 1,0.5&�6=   .��57      � $ 0Q�6'   $ #4facfe��62   � 58      $ 1Q�6'   $ #00f2fe��62   59      .��5;      � $	��120��6   $��40��6#   $��Center=�6/   $��Center=�6L   
������ .+�5<      �� $ 
Horizontal=�6!   $��Center=�6:   .+�5=        $	 PlusBoxOutline=�6&   $��25��6<   $��25��6H   
�������$��Center=�6f   �� 5>      $��	添加到��6$   $��Center=�6/   
�������6J   5?      ' 	 !MaterialDesignThemes.Wpf.PopupBox  5@      $	��120��6"   $��40��6.      	PopupMode$ Click=�6:      PlacementMode$ BottomAndAlignCentres=�6M    J� Opacity$ 0Q�6s      PopupContent 5A      o� 5B      ��6#   �� *Menus+��5C   "   �� 5D   &   .R�5E   *   �� $ Vertical=�65   5F   '   5H      5J      5K      5M      �� 5N      -   5         ��Name$ BtnAddLocal��5N   y   $��40��6   $	��120��6!   $ 20��6-   $��20,0,0,0q�6g   #��[  5O      $
 Hand��6~   ��5N   P   Z� ��5O   R   �� *ClickImportLocalCommand+��5Q      �� 5R      $ 0,0.5&�6*   $ 1,0.5&�6=   .��5S      � $ 0Q�6'   $ #4facfe��62   � 5T      $ 1Q�6'   $ #00f2fe��62   5U      .��5W      �� $ 
Horizontal=�6   .+�5X      �� $��添加本地音乐��6    $��Center=�6.   
�������6I   5Y      5Z      5[      &	   System.Windows.Controls.DataGrid	  5\   
   -   5         	 Name$	 dgv��5^      $��1��5\       	  AutoGenerateColumns$ False��5]      
������  	  CanUserReorderColumns$ False��5_       	  CanUserAddRows$ False��5`   6    	  CanUserSortColumns$ False��6M    	  
IsReadOnly$
 True��6h   ��6   �� *
MusicInfos+
 5a        5b      $ MouseDoubleClick��6!   . 5c         6,   �� *PrePlayCommand+   CommandParameter 5d   ,   �� *SelectedItem+ �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorType DataGrid5e       	  Columns 5g      0
  *System.Windows.Controls.DataGridTextColumn
  5h      ,  &System.Windows.Controls.DataGridColumn   Header$ 	歌曲名��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ 4* 62   1  +System.Windows.Controls.DataGridBoundColumn    Binding  6=   �� *Name+6X   
  5i      $ 歌手��6%   $ 2* 61     6<   �� *	Artists+6Z   
  5j      $ 专辑��6%   $ 2* 61     6<   �� *Album+6X   
  5k      $ 来源��6%   $ 1* 61     6<   �� *
SourceName+6]   4  .System.Windows.Controls.DataGridTemplateColumn  5l      $	 120 6)   $ 操作��65   !   CellTemplate! 5m      �� 5n      .R�5o      $  Music.UI.Views.ListOperateView  "  Name$" lstOp��64   6E   5p      5r      5t      5u      5v      