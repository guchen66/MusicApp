   M S B A M L   `   `   `  ����C  ?Music.UI, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:Music.UI.ViewsMusic.UI.Views  5      5clr-namespace:Music.UI.ControlsMusic.UI.Controls  5      F BMusic.Utils, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullT9clr-namespace:Music.Utils.Converters;assembly=Music.UtilsMusic.Utils.Converters 5          Music.UI.Views.FooterView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .localclr-namespace:Music.UI.Views     5      3controlclr-namespace:Music.UI.Controls     5      O	converter9clr-namespace:Music.Utils.Converters;assembly=Music.Utils     5      _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3i+http://schemas.microsoft.com/xaml/behaviors  5
      _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a:md1http://materialdesigninxaml.net/winfx/xaml/themes  5      T	 PPrism.Wpf, Version=8.1.97.5141, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59$prismhttp://prismlibrary.com/ 	 5      ! 	 Prism.Mvvm.ViewModelLocator    AutoWireViewModel  True5       � 	Resources 5       �� Source�� 5   
   $U Opack://application:,,,/Music.Utils;component/Resources/MaterialDesignStyle.xaml?�6   %    .��5      � 
������� � ColumnDefinitions 5   
   �� 5      �� 5      �� 5      .+�5   
   � $��0��6    5      �� 5      �� 5      .+�5      �� $E��?pack://application:,,,/Music.UI;component/Assets/Images/lyk.jpg��6   $��50��5       $��50��6   $��	10 10 0 0q�5!      $��0��5"      5#      �� 5%      $��1��6   .+�5&      �  � RowDefinitions 5'      �� 5(      �� 5)      .+�5,      �� $��歌名��6    $��16(�6*   $��	10 20 0 0q�68   �� 5.       �� Orientation$ 
Horizontal=�6!   $��1��5/   !   $��Bottom=�50   !   $��Stretch=�51   !   $��	10 10 0 0q�52   !   .+�53      �� $��收藏��6$   60   �� 54      $��下载��6$   60   �� 55      $��更多��6$   60   56      57      58      59      �� 5<   
   $ 
Horizontal=�6   $��1��6.   $��Center=�6>   .+�5@      '  !MaterialDesignThemes.Wpf.PopupBox     PlacementMode$ TopAndAlignCentres=�6      ToggleContent 5A      � 5B      $��45��6   $��45��6'   .+�5C      F�    PrimaryHueMidBrush#���   6=   $��Center=�6i   $��Center=�6�   ��6   �� *PlayModeIcon+6�   5D         PopupContent 5F      �� 5G      .+�5H      �� 	 � Cursor$
	 Hand��6!   $��0��6Y   ��6/   �� *ChangePlayModeCommand+.��5I      �� $ 
Horizontal=�6)   .+�5J   "   F� $��0,0,5,0q�6'   #���   69   $��Center=�6e   �� 5K   "   $��5,0,0,0q�6,   $��单曲播放��6=   $��Center=�6I   5L      5M      �� 5N      $
	 Hand��6!   $��1��6Y   ��6/   �� *ChangePlayModeCommand+.��5O      �� $ 
Horizontal=�6)   .+�5P   "   F� $��0,0,5,0q�6'   #���   69   $��Center=�6e   �� 5Q   "   $��5,0,0,0q�6,   $��单曲循环��6=   $��Center=�6I   5R      5S      �� 5T      $
	 Hand��6!   $��2��6Y   ��6/   �� *ChangePlayModeCommand+.��5U      �� $ 
Horizontal=�6)   .+�5V   "   F� $��0,0,5,0q�6'   #���   69   $��Center=�6e   �� 5W   "   $��5,0,0,0q�6,   $��列表循环��6=   $��Center=�6I   5X      5Y      �� 5Z      $
	 Hand��6!   $��3��6Y   ��6/   �� *ChangePlayModeCommand+.��5[      �� $ 
Horizontal=�6)   .+�5\   "   F� $��0,0,5,0q�6'   #���   69   $��Center=�6e   �� 5]   "   $��5,0,0,0q�6,   $��随机播放��6=   $��Center=�6I   5^      5_      5`      5c      �� 5g       * &MaterialDesignFloatingActionMiniButton#��[ 6   ��6U   �� *ClickPreviousMusicCommand+.��5h      '  !MaterialDesignThemes.Wpf.PackIcon  
   Kind$
 SkipPrevious=�6   
������� � LayoutTransform 5i      �� 5j       �� ScaleX$ 2Q�6)    �� ScaleY$ 2Q�64   5l      5m      � 5p      .+�5q      ��  & "MaterialDesignFloatingActionButton#��[ 6   $��	20,0,20,0q�6U   ��5r   !   �� *ClickPlayCommand+y�6F   �� *PlayButtonVisibility+.��5s        $

 Play=�6"   
������� 5t      �� 5u      $ 2Q�6-   $ 2Q�68   5w      5x      �� 5y      #��[ 6   $��	20,0,20,0q�6U   ��5z   !   �� *ClickPauseCommand+y�6G   �� *PauseButtonVisibility+.��5{        $
 Pause=�6"   
������� 5|      �� 5}      $ 2Q�6-   $ 2Q�68   5      5�      5�      �� 5�      #��[ 6   ��6U   �� *ClickNextMusicCommand+.��5�        $
 SkipNext=�6   
������� 5�      �� 5�      $ 2Q�6)   $ 2Q�64   5�      5�      �� 5�      $��10q�6   .��5�      � .+�5�      ��   MaterialDesignIconButton#��[ 6   $��0,0,0,4q�6O   $��0,0,4,0q�6a   .��5�        $
 
VolumeHigh=�6&   6:   5�      �� 5�      #��[ 6   $��0,0,0,4q�6O   $��0,0,4,0q�6a   $y�Hidden=�6r   .��5�        $
 	VolumeOff=�6&   69   5�      5�      5�      5�      �� 5�   
   $��2��6   $ 
Horizontal=�6%   $��50 0 0 0q�6>   .+�5�      �� $ 
Horizontal=�6   $��1��62   $��Center=�6?   .+�5�      �� $��00:00��6   $��20(�6)   �� 5�      $	�� / ��6    �� TextAlignment$ Center=�6'   $��20(�6>   6N   �� 5�      $��11:00��6   $��20(�6)   5�        5�      $
 PlaylistMusic=�6   $��Center=�6/   $��Right=�5�      $��30 0 0 0q�66   $��40��5�      $��40��6%   63   5�      5�      5�      