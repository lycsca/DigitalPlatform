   M S B A M L   `   `   `  ����O  KDigitaPlatform.Views, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:DigitaPlatform.ViewsDigitaPlatform.Views  5   	   P LDigitaPlatform.Common, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\Bclr-namespace:DigitaPlatform.Common;assembly=DigitaPlatform.CommonDigitaPlatform.Common 5   	   $    DigitaPlatform.Views.LoginView   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   4local"clr-namespace:DigitaPlatform.Views     5   	   PcBclr-namespace:DigitaPlatform.Common;assembly=DigitaPlatform.Common     5   	   -   5        $	��win��5        � 
ResizeMode$  NoResize=�5
   	   ���#f1f5fd � WindowStartupLocation$ CenterScreen=�64    � Title$ 系统登录��5   	   $	��520��6   $	��700��6#    � DataContext 5	   
   ��    locator �� Source# [   �� Path$ LoginViewModel�'  !System.Windows.Shell.WindowChrome   WindowChrome 5        5   
      GlassFrameThickness$ 1q�6    � 	Resources 5      	 �� MergedDictionaries
 �� Source �� 
TargetType  Key �� Property �� Value �� 
TargetType J� SnapsToDevicePixels � ColumnDefinitions  Iconfont �� 
StartPoint �� EndPoint � Color � Offset �� Triggers P� Property P� Value �� 
TargetName �� Value �� Binding �� RelativeSource �� Mode�� 5   
   	 5      �� 5      $U
 Opack://application:,,,/DigitaPlatform.Assets;component/Styles/ButtonStyles.xaml?�6%   �� 5      �� 5      " ��6   UserNameTextBoxStyle .�5      ��  � ��$ 13(�65   �� 5       � �� 5      �� 5   "   " ��62   .R�5   &   �� $��border��5   9   ���#DDD$��0,0,0,1q�5      $��40��68   $
 True��5      ._�5   *   �  5   .   �� 5    2   $��30 �6C   �� 5!   2   .+�5#   .   �� $	����68   #���  5$   )   $��Center=�5%   )   $��Center=�5&   )   $��15(�5'   )   ��5(   2   �� 5)   6   $	 0,1&�6J   $	 1,0&�6[   .��5*   :   � $ #16a1ff��6G   $ 0Q�6W   � 5+   :   $ #b4fee7��6G   $
 0.65Q�6W   � 5,   :   $ #16a1ff��6G   $ 1Q�6W   5-   7   5/   /   �� 50   .   $��markText��51   ;   $)��#请输入工号/手机号/用户名��50   8   $��1��6M   $��Center=�6]   ���#DDD$y�	Collapsed=�51   K   �� 52   .   $��PART_ContentHost��6;   $��1��6S   53   +   54   '    56   &   P� 57   *    �@J�IsMouseOver$
 true��6I   . �58   .   �� $ border��6L    � �� �	#FF7EB4EA6`   59   +   P� 5:   *    �@J�IsKeyboardFocused$
 true��6O   . �5;   .   �� $ border��6L    � �� �	#FF569DE56`   5<   +   �� 5=   *   $  ��6~    66   �� $
 Text� �� $
 Self=�.a�5>   .   �� $ markText��6K    � y�$ Visible=�6a   5?   +   5A   #   5C      5D      �� 5F      " G�6   PasswordBoxStyle .�5G      ��  � ��$ 13(�65   �� 5H       � �� 5I      �� 5J   "   " G�62   .R�5K   &   �� $��border��6�   ���#DDD$��0,0,0,1q�6@   $��40��6Z   $
 True��6f   ._�5L   *   �  5M   .   �� 5N   2   $��30 �6C   �� 5O   2   .+�5Q   .   �� $	����68   #���  6H   $��Center=�6p   $��Center=�6�   $��15(�6�   ��5R   2   �� 5S   6   $	 0,1&�6J   $	 1,0&�6[   .��5T   :   � $ #16a1ff��6G   $ 0Q�6W   � 5U   :   $ #b4fee7��6G   $
 0.65Q�6W   � 5V   :   $ #16a1ff��6G   $ 1Q�6W   5W   7   5Y   /   �� 5Z   .   $��markText��6�   $��请输入登录密码��68   $��1��6G   $��Center=�6W   ���#DDD$y�	Collapsed=�5[   5   �� 5\   .   $��PART_ContentHost��6;   $��1��6S   5]   +   5^   '    5_   &   P� 5`   *    �@J�IsMouseOver$
 true��6I   . �5a   .   �� $ border��6L    � �� �	#FF7EB4EA6`   5b   +   P� 5c   *    �@J�IsKeyboardFocused$
 true��6O   . �5d   .   �� $ border��6L    � �� �	#FF569DE56`   5e   +   �� 5f   *   $  ��6]    66   �� $ User.Password�.a�5g   .   �� $ markText��6K    � y�$ Visible=�6a   5h   +   5j   #   5l      5m      5n      %   '��       'G�       5p      .��5t      � .+�5u   
   �� $	��400��6   $
��Left=�6   ._�5v      �� $O��Ipack://application:,,,/DigitaPlatform.Assets;component/Images/LoginBg.png��5w      $
��Fill=�5x      5y      �� 5{   
    �� CornerRadius$ 5��6   $��0q�6"   $��Right=�6-   $	��300��5|      ��5}      �� 5~      $	 0,0&�6&   $	 1,1&�67   .��5      � $ #797676��6#   $ 0Q�63   � 5�      $ #f8f8f8��6#   $ 1Q�63   5�      ._�5�      � $
}�True��6   $	��300��6'   $��3q�5�      .+�5�      � $
��35,0q�6    � RowDefinitions 5�      �� 5�      $��40 �6(   �� 5�      $
��1.8* �6(   �� 5�      �� 5�      $
��auto �6(   �� 5�      $
��auto �6(   �� 5�      $��20 �6(   �� 5�      $
��auto �6(   �� 5�      .+�5�      �� $	��100��6   $L��Fpack://application:,,,/DigitaPlatform.Assets;component/Images/logo.png��5�      $��1��6V    J� OpacityMask 5�      �� 5�      $	 0,0&�62   $	 0,1&�6C   .��5�   "   � $ Black��6/   $ 0Q�6=   � 5�   "   $ Transparent��6/   $ 1Q�6C   5�      5�      �� 5�      $$��空压站数字化监控系统��6    $��2��5�   
   $��Center=�5�   
   $	��Top=�6'   $��YouYuan)�5�   
   $��17(�6   $��0,10,0,0q�5�   
   $
 True��6   ��5�      �� 5�      $	 0,0&�62   $	 1,1&�6C   .��5�   "   � $  #7ed6f7��6/   $ 0Q�6@   � 5�   "   $  #5acdd2��6/   $	 0.5Q�6@   � 5�   "   $  #35c4ad��6/   $
 0.75Q�6@   � 5�   "   $  #11bb88��6/   $ 1Q�6@   5�        J� Effect  5�      3  -System.Windows.Media.Effects.DropShadowEffect  5�      !   Color$
! #DDD��6/   "   ShadowDepth$" 0Q�6<   #   
BlurRadius$# 10Q�5�      $   	Direction$$ 0Q�6)   %   Opacity$	% 0.2Q�67   & � LayoutTransform& 5�      �� 5�      ' �� ScaleX$	' 1.2Q�6-   5�      �� 5�      $��3��6   $��Center=�5�        UserNameTextBoxStyle#��[ 5�      ��5�      �� *User.UserName+( �� UpdateSourceTrigger$( PropertyChanged=�G� 5�      $��4��6"   $��Center=�6/     PasswordBoxStyle#��[ 6Q   -  'DigitaPlatform.Common.PasswordBoxHelper)   Attach$
) true��5�      *   Password* 5�      �� *User.Password++ �� Mode$+ TwoWay=��� 5�      $��登录��6   $��6��6*   $��35��67     NormalButtonStyle#��[ 6C   ��5�      �� *LoginCommand+��6$   �� , �� ElementName$	, win���� 5�      $��7��6;   
���  ��$��Center=�6Y   $��Center=�5�   
   $
��Wrap=�6'   ��5�       �� *	FailedMsg+5�   '   5�      �� 5�      -   5        $	����5�      #���  6,   $	��Top=�6T   $��Right=�6l     WindowControlButtonStyle#��[ 5�      $��40��65   $��30��6@   $��14(�6L   $��0,0,10,0q�6Z   -   IsHitTestVisibleInChrome$
- True��5�      60   5�      5�      5�      5�      