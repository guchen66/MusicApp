   M S B A M L   `   `   `  ����C  ?MusicApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null/clr-namespace:MusicApp.ViewsMusicApp.Views  5   	       MusicApp.Views.LoginView   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   .localclr-namespace:MusicApp.Views     5   	   [ WPrism.DryIoc.Wpf, Version=8.1.97.5141, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59T PPrism.Wpf, Version=8.1.97.5141, Culture=neutral, PublicKeyToken=40ee6c3a2184dc59&prismhttp://prismlibrary.com/   5   	   _ [MaterialDesignThemes.Wpf, Version=4.8.0.0, Culture=neutral, PublicKeyToken=df2a72020bd7962a:md1http://materialdesigninxaml.net/winfx/xaml/themes  5
   	   !  Prism.Mvvm.ViewModelLocator    AutoWireViewModel  True5   	    � WindowStartupLocation$ CenterScreen=�5	   	    � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�5   	    � Title$ 用户登录��5   	   $	��360��6   $	��550��6#    � Icon 5      �� 5   
   -   5        	loginIcon�� �� 	UriSource$ /favicon.ico?�5   )   .��5      � .+�5   
   �� ��5      �� 5       �� ImageSource$ ../Assets/Images/bg.jpg��6    j� Stretch$
 Fill=�6C   5      � 5   
   $��180 40 20 50q�6   	 � RowDefinitions	 5      �� 5      �� 5      �� 5      �� 5      .+�5       �� $��1��6   
 �� Orientation$
 
Horizontal=�6&   .+�5!      �� $��60��6   $��Center=�6'   $��
用户名:��6B   $��18(�6N   $��30 0 0 0q�6\   �� 5"      $	��200��6H   $��18(�6T   $��Center=�5#      $��10 0 0 0q�65   ��5"      �� *AppData.CurrentUser.UserName+5#   5   5$      �� 5&      $��2��6   $
 
Horizontal=�6&   .+�5'      �� $��60��6   $��Center=�6'   $��密码:��6B   $��18(�6M   $��30 0 0 0q�6[   �� 5(      $��18(�6H   $	��200��5)      $��Center=�6&   $��10 0 0 0q�6A   ��5(      �� *AppData.CurrentUser.Password+5)   A   5*      �� 5,      $��3��6   $
 
Horizontal=�6&   $��Center=�5-      $��Center=�5.      $��50 0 0 0q�5/      .+�50      �� $��80��6   $��登录��6$    �� 	IsDefault$
 True��6R   ��61   �� *LoginCommand+��51      ��  �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorType
 Window�� 52      $��80��6   $��取消��6$   $��40 0 0 0q�61    �� IsCancel$
 True��6e    � Cursor$
 Hand��6u   ��6C   �� *CancelCommand+6u   53      54      55      57      