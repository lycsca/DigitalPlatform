   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5   	   O KDigitaPlatform.Views, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null;"clr-namespace:DigitaPlatform.ViewsDigitaPlatform.Views 5   	   P LDigitaPlatform.Common, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullpLclr-namespace:DigitaPlatform.Common.Converter;assembly=DigitaPlatform.CommonDigitaPlatform.Common.Converter 5	   	   pLclr-namespace:DigitaPlatform.Common.Converter;assembly=DigitaPlatform.CommonDigitaPlatform.Common.Converter 5
   
   .   (DigitaPlatform.Views.ComponentConfigView   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   6sys&clr-namespace:System;assembly=mscorlib     5   	   _ [Microsoft.Xaml.Behaviors, Version=1.1.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a3b+http://schemas.microsoft.com/xaml/behaviors  5   	   .local"clr-namespace:DigitaPlatform.Views  5   	   \	converterLclr-namespace:DigitaPlatform.Common.Converter;assembly=DigitaPlatform.Common  5	   	   TcLclr-namespace:DigitaPlatform.Common.Converter;assembly=DigitaPlatform.Common  5
   
   -   5        $	��win��5   	   $��Microsoft YaHei)�5   	   $��
ExtraLight"�6&   $��11(�6>     � WindowStartupLocation$  CenterOwner=�5   	    � Title$ 设备组态编辑��5   	   $	��650��6   $
��1200��6%    � DataContext 5   	   ��    locator �� Source# [   �� Path$ ConfigViewModel���5      �� 5   
    �� 
StartPoint$	 0,0&�6    �� EndPoint$	 0,1&�6/   .��5      �  � Color$ #DCEDfa��6    � Offset$ 0Q�6+   � 5      $ #F7F9FA��6   $	 0.1Q�6+   � 5      $ #F7F9FA��6   $ 1Q�6+   5      '  !System.Windows.Shell.WindowChrome	   WindowChrome	 5        5   
   
   GlassFrameThickness$
 1q�6   *  $Microsoft.Xaml.Behaviors.Interaction   Triggers 5      +  %Microsoft.Xaml.Behaviors.EventTrigger  5   
      	EventName$ KeyDown��6   *  $Microsoft.Xaml.Behaviors.TriggerBase   Actions. 5      2  ,Microsoft.Xaml.Behaviors.InvokeCommandAction     PassEventArgsToCommand$
 True��6G      Command 6$   �� *KeyDownCommand+6G   5        � 	Resources 5#       �� MergedDictionaries �� Source9  3DigitaPlatform.Common.Converter.DeviceItemConverter  Key �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius �� RelativeSource �� Mode �� Triggers P� Property P� Value �� 
TargetName3  -System.Windows.Media.Effects.DropShadowEffect   
BlurRadius   Color    ShadowDepth!   Opacity" �� Triggers�� 5$   
    5%      �� 5&      $U Opack://application:,,,/DigitaPlatform.Assets;component/Styles/ButtonStyles.xaml?�6%   �� 5'      $W Qpack://application:,,,/DigitaPlatform.Assets;component/Styles/ComboBoxStyles.xaml?�6%   �� 5)        5*      dic 6,   �� 5+      b2v 63   �� 5.      " d�6   StateButtonStyle .�5/      ��  � �� �#AAA67   �� 50       � �� 51      �� 52   "   " d�62   .R�53   &   �� $
��back��6F   
������  6R   �� *Tag+ �� $ TemplatedParent=�._�54   *   �� $	��bor��6�    61   �� *Tag+ �� $ TemplatedParent=�._�55   .   �� $��content��6w   $��Center=�6?   $��Center=�6Z   6w   56   +   57   '    58   &   P� 59   *    �@J�IsMouseOver$
 True��6I   . �5:   .   �� $	 bor��65    � �� �	#090000006\   5;   +   P� 5<   *    �@d�	IsChecked$
 TrueY�6G   . �5=   .   �� $
 back��65    � �� 5>   2   �� 5?   6   $	 0,1&�6J   $	 0,0&�6[   .��5@   :   � $ 	#AAF7F9FA��6G   $ 0Q�6Y   � 5A   :   $ #5DDD��6G   $ 1Q�6U   5B   7   5D   /   �� 5E   .   $ content��65    �@J�Effect 5F   2     5G   6   $ 5Q�6G   $ Black��6V   $  0Q�6d   $	! 0.1Q�6t   5I   /   5J   +   5L   #   5N      " 5O      P� 5P       �@d�	IsChecked$
 TrueY�6;   . �5Q   "   ��  � �� �#9996?   5R      5T      �� 5U      " ��6   ControlButtonStyle .�5V      ��  � �� �#88867   �� 5W       � �� 5X      �� 5Y   "   " ��62   .R�5Z   &   �� $
��back��6F   
������ ._�5[   *   �� $	��bor��6�    61   �� *Tag+ �� $ TemplatedParent=�._�5\   .   �� $��Center=�6?   $��Center=�6Z   5]   +   5^   '    5_   &   P� 5`   *    �@J�IsMouseOver$
 True��6I   . �5a   .   �� $	 bor��65    � �� �	#090000006\   5b   +   P� 5c   *    � ��$
 True��6G   . �5d   .   �� $	 bor��65    � �� �	#110000006\   5e   +   5g   #   5i      5j      5k      %   'd�       '��       5m      .��5o      �  5p   
     ExpanderToggleButton# � ColumnDefinitions  Iconfont$ J� RenderTransformOrigin% �� Angle& ��Name' � RowDefinitions( ��Name) d� 	IsChecked* �� Mode+ �� ElementName  PointMoreButtonStlye��%N  &	       7  '9� $    7  '�� �    &	 v    7  �� 5q      " d�6   .�5r      ��  � �� �#8886/   �� 5s       � �� 5t      �� 5u      " d�6*   .R�5v      �� $ 5��6%   
������ ._�5}   "   � $��26��6'   # 5~   &   �� 5   *   �� 5�   *   $��30 �6;   .+�5�   &   �� 
��� ���$��2��6?   $��10��6I   $ 2��6U   $y�	Collapsed=�6f   $��Center=�5�   %   $
��Left=�6@   $��3q�6[   �� 5�   &   $��Center=�67   $
��Left=�6R   $
��13,0q�6m   �� 5�   &   $��arrow��5�   D   $	����5�   0   8��  $��1��6g   $��Center=�5�   $   $��Center=�6?   $$ 0.5,0.5&�5�   $   6D   5�   #   5�       5�      P� 5�   "    �@d�	IsChecked$
 TrueY�6?   . �5�   &   �� $ arrow��6-    � z� 5�   *   �� 5�   .   $	% 180Q�6>   5�   '   5�   #   5�      5�      5�      �� 5�      " 9�6   .�5�      ��   �@ IsHitTestVisibleInChrome$
 True��6J   �� 5�       � ��$	 0,3q�6+   �� 5�       � �� 5�      �� 5�      " 9�6*   .R�5�      �� $& Content��6%   $��1,0,1,1q�66   $ 5��6P   ���#7FFF._�5�   "   � ' 5�   &   �� 5�   *   $
��Auto �68   �� 5�   *   $( 
ContentRow��68   $��0 �6L   .+�5�   &   �� $��1��6-   ���	#55409EFE$��0,1,0,0q�6R   $
��10,0q�6l   �� 5�   &   $��1��6-   
��� ���$��0,1,0,0q�6O   $��20��6i   $
��Left=�6t   $
��15,0q�6�   d� 5�   &   #��z��63   8��  ) 5�   '   �� *
IsExpanded+$* TwoWay=� �� *TemplatedParent+�� 5�   &   $��4q�67   $��1��6B   5�   #   5�       5�      P� 5�   "    �@9�
IsExpanded$
 True��6@   . �5�   &   �� $ 
ContentRow��6-    6W   �� *Height+$+ Content�� � ��5�   #   5�      5�      5�      �� 5�      " ��6   .�5�      ��  � ��$ Center=�6=   �� 5�       � �� 5�      �� 5�      " ��6*   .R�5�      �� $	��bor��6   ���#EEE$��1q�68   $ 3��6L   $��26��6]   
�������._�5�   "   �� $��PART_ContentHost��6/   $��0q�6G   5�       5�      P� 5�   "    �@J�IsKeyboardFocused$
 True��6G   . �5�   &   �� $	 bor��6-    � �� �#16a1ff6U   5�   #   5�      5�      5�      �� 5�      " d�6   .�5�      ��  � �� 5�      �� 5�      " d�6*   .R�5�      �� $��border��5�   :   $ 3��5�   %   
������ $��1q�6P   
������ ._�5�   "   �� $	����6,   8��  $��Center=�6c   $��Center=�6~   ���#8885�   (   5�       5�      P� 5�   "    �@d�	IsChecked$
 TrueY�6?   . �5�   &   �� $ border��6-    � �� �#EEE6X   �� 5�   &   $ border��6-    � �� �#10006W   5�   #   P� 5�   "    �@J�IsMouseOver$
 True��6A   . �5�   &   �� $ border��6-    � �� �#EEE6X   �� 5�   &   $ border��6-    � �� �	#110000006W   5�   #   5�      5�      5�      5�      .+�5�   
   � ��5�      !� 5�      , j� TileMode$
, Tile=�6   - j� Viewport$- 	0,0,40,40�6.   . j� ViewportUnits$. Absolute=�6C   / !� Visual/ 5�      F� 5�      "����        �     Zb� Zb Zb	���#F7F9FA$��1��6G   0 �� StrokeDashArray$	0 5,5R�6[   5�      1 J� OpacityMask1 5�      �� 5�      $	 0,0&�6&   $	 0,1&�67   .��5�      � $ Transparent��6#   $ 0Q�67   � 5�      $ Black��6#   $	 0.6Q�61   5�      5�      � 5�   
   ��5�      �� 5�      $	 0,0&�6&   $	 0,1&�67   .��5�      � $ Transparent��6#   $ 0Q�67   � 5�      $ 	#0916a1ff��6#   $ 1Q�65   5�      # 5�      �� 5�      $
��auto �6#   �� 5�      �� 5�      $
��auto �6#   .+�5     �� $��1��6   $	��5,0q�6+   2 J� 	AllowDrop$
2 True��5  :   
������ ��6   �� *
DeviceList+ 5       5     $
 Drop��6%   . 5       $
 True��5	  ,    5  0   �� *ItemDropCommand+5	  ,   5
     ��5     �� 5     " ��6   .�5     ��  �@��Left 68   �� *X+�� 5      �@��Top 67   �� *Y+�� 5      �@K�ZIndex 69   �� *Z+5     ��5     �� 5     .R�5     �� 
������ $
}�True��6:    5       5  "   $ MouseLeftButtonDown��61   . 5  &      5  !   �� *DeviceSelectedCommand+5  #   5     5     ��5      �� 5!     .R�5'     �� $��content��5*  E   $$ 0.5,0.5&�6%   ��5'  )   �� $ 
DeviceType�  dic3 �� 	Converter#3 [ ��5(  "   �� *Width+��6:   �� *Height+y�5)  %   �� *	IsVisible+  b2v#3 [  5+       5,  "   $ MouseLeftButtonDown��61   . 5.  &   4  .Microsoft.Xaml.Behaviors.Core.CallMethodAction  4   
MethodName$4 OnMouseLeftButtonDown��69   5   TargetObject5 6\   ��   5/  &    50  !   �� *#!DataContext.DeviceSelectedCommand+$	+ win��6   CommandParameter6 51  !   �� 52  #     53  "   $ 	MouseMove��61   . 54  &     $4 OnMouseMove��69   5 6R   �� 55  #     56  "   $ MouseLeftButtonUp��61   . 57  &     $4 OnMouseLeftButtonUp��69   5 6Z   �� 58  #   7 � ContextMenu7 5:     �� 5;  "   8 �� AlternationCount$	8 100��6S   ��6.   �� *ContextMenus+ 5<  &   ��%>  'm�       '�� �     �� 5=  *   " m�60   .�5>  .   ��  � �� 6G   �� *
MenuHeader+�� 5?  .    �@m�Command 6H   �� *MenuCommand+5@  +   �� 5A  *   " ��60   " 5B  .   P� 5C  2    �@��AlternationIndex$ 0��6c   . �5D  6   ��  � y�$ Visible=�6S   5E  3   5G  +   5H  '   5I  #   5K     5L     5N     �� 5Q     $
��Left=�6   $��
10,15,0,10q�66   $��Hidden=�5R     y�5S     �� $ 	IsChecked�$+ tb_component��#3 [ .��5T     �� $	��150��6A   ��6   �� *	ThumbList+��5U     �� 5V     .R�5W     9� 9 9� 
IsExpanded$
9 True��6A   ��6'   �� *Header+.��5X  "   �� ��6/   �� *
Children+��5Y  &   �� 5Z  *   .R�5[  .   A� : A� Columns$: 3��6:   5\  +   ��5^  &   �� 5_  *   .R�5`  .   �� $	��b_1��5c  A   $��35��5`  5   $��35��6@   ���	#09409EFE$��3q�5a  H   $ 5��5b  1   
; � Tag; 5c  1   �� < � ToolTip< 6L   �� *Header+= J� InputBindings= 5d  2   d� 5e  6   > d� MouseAction$> 	LeftClicke�6C   ? �� Command? 5f  ?   �� *ThumbCommand+@ �� CommandParameter@ 5g  ?   �� $	+ b_1��._�5i  2   �� $��6q�69   ��5j  6   �� 5k  :   A �� ImageSourceA 6E   �� *Icon+5m  3   5n  /   B �� TriggersB 5o  .   P� 5p  2    �@J�IsMouseOver$
 True��6Q   . �5q  6   �� $	 b_1��6=    � �� �	#22409EFE6d   5r  3   5t  +   5v  #   5w     5x     5z     5{     �� 5~     $��2��6   $	��220��6%   $��Right=�5     $��
0,15,10,10q�6-   $ 5��6A   
������ y�5�     �� $ 	IsChecked�$+ tb_property��#3 [ ._�5�     � ' 5�     �� 5�     $��30 �6(   �� 5�     �� 5�     $
��auto �6(   .+�5�     �� $ 5��6   ��5�     �� 5�     $	 0,0&�62   $	 1,0&�6C   .��5�  "   � $ 	#7716a1ff��6/   $ 0Q�6A   � 5�  "   $ 	#1116a1ff��6/   $ 1Q�6A   5�     5�     �� 5�     
��� ���$��4��6/   $��10��69   $ 2��6E   $��10,0,0,0q�6V   $��Center=�5�  %   $
��Left=�6@   �� 5�     $��Center=�6    
�������$��20,0,0,0q�6N   �� 5�     $�参数配置��6    �� 5�     $
��Bold"�6T   �6   �� *CurrentDevice.Header+C �� StringFormat$C - {0}��6T   5�     � 5�     $��1��6   ' 5�     �� 5�     $��50 �6,   �� 5�     $
��auto �6,   �� 5�     $��50 �6,   �� 5�     $
��auto �6,   �� 5�     $
��auto �6,   .+�5�     �� $ 5��6!   ���#AFFF$��2��6E   $��0,5,0,0q�6V   �� 5�     $ 5��6!   ���#AFFF$��2��6E   $��3��6R   $��0,5,0,0q�6c   �� 5�     ���#EEE$��0,0,0,1q�64   $��	10,5,10,8q�6N   �� 5�     ���#EEE$��0,0,0,1q�64   $��	10,5,10,8q�6N   $��2��6a   �� 5�     $��通信参数��6$   $��15,10q�60   $
��Bold"�6?   ���#888$��Center=�6c   �� 5�     $��24��6!   $��24��6,     WindowControlButtonStyle#��[ 68   $	��5,0q�6j   $��Right=�5�     $< 添加参数��69   ��6H   �� *CurrentDevice.AddPropCommand+.��5�     F� +����    @KL р�� @KL �@KL     �@KL ��� 	���#5556=   5�     �� 5�     $��1��6'   $	��200��64   $��Hidden=�6D   $��10,0,0,5q�6i   .��5�     �� $��0,0,10,0q�6Z   ��6+   �� *CurrentDevice.PropList+��5�  "   �� 5�  &   .R�5�  *   � $��26��6/   $	��0,1q�6;   # 5�  .   �� 5�  2   �� 5�  2   �� 5�  2   $��20 �6C   .+�5�  .   �� $��	cb_p_name��5�  3   D �� DisplayMemberPath$D Header��5�  3   E �� SelectedValuePath$E PropName��5�  3   $��0,0,2,0q�5�  D     PropComboBoxStyle#��[ 5�  3   ��5�  7   �� *DataContext.PropOptions+$	+ win��F �� SelectedValueF 5�  3   �� *
PropName+��5�  2   �� 5�  6   " ��6<   .�5�  :   ��  � �� 5�  >   �� 5�  B   " ��6R   .R�5�  F   �� $��border��6M   
������ $��23��6t   $ 3��6�   ._�5�  J   �� $��Center=�6[   $	��3,0q�6v   5�  G    5�  F   P� 5�  J    �@J�IsMouseOver$
 True��6i   . �5�  N   �� $ border��6U    � �� �	#336364f86   5�  K   P� 5�  J    �@��
IsSelected$
 True��6h   . �5�  N   �� $ border��6U    � �� �	#BB6364f86   �� 5�  N   $ border��6U    � ��
 �����6�   5�  K   5�  C   5�  ;   5�  7   5�  /   �� 5�  .   $��cb��6G   $��1��67   $y�	Collapsed=�6Q   #��[ 5�  3   ��5�  3   �� $+ 	cb_p_name��$ SelectedItem.ValueOptions�G �� SelectedIndexG 5�  3   �� $+ 	cb_p_name��$ SelectedItem.DefaultIndex�H �� SelectedItemH 5�  3   �� *	PropValue+��5�  2   �� 5�  6   " ��6<   .�5�  :   ��  � �� 5�  >   �� 5�  B   " ��6R   .R�5�  F   �� $��border��6M   
������ $��23��6t   $ 3��6�   ._�5�  J   �� $��Center=�6[   $	��3,0q�6v   5�  G    5�  F   P� 5�  J    �@J�IsMouseOver$
 True��6i   . �5�  N   �� $ border��6U    � �� �	#336364f86   5�  K   P� 5�  J    �@��
IsSelected$
 True��6h   . �5�  N   �� $ border��6U    � �� �	#BB6364f86   �� 5�  N   $ border��6U    � ��
 �����6�   5�  K   5�  C   5�  ;   5�  7   5�  /   �� 5�  .   $��tb��6F   $��1��66   ��6P   �� *	PropValue+�� 5�  .   $��2��68   $��Center=�6H   $��Center=�6c   �� 5�  .   #��[ 68   I �� TextDecorations$
I None{�6_   J �� CommandJ 5�  8   �� $	+ win��$1 +DataContext.CurrentDevice.DeletePropCommand�K �� CommandParameterK 5�  8   �� .�6U   6_   5�  /   5�  +   B 5�  *   �� 5�  .   L �� Value$L 1��6z   M �� BindingM 6:   �� *SelectedItem.PropType+$+ 	cb_p_name��.a�5�  2   �� $ cb��69    � y�$ Visible=�6_   �� 5�  2   $ tb��69    � y�$ 	Collapsed=�6_   5�  /   5�  '   5�     5�     �� 5     $��点位配置��6$   $��2��60   $��15,10q�6=   $
��Bold"�6L   ���#888$��Center=�6p   �� 5     N �� Orientation$N 
Horizontal=�6%   $��2��6>   $��Right=�6K   $	��5,0q�6g   .+�5     �� $��24��6%   $��24��60   #��[ 5  !   $< 添加点位信息��6S   ��5  %   �� *" CurrentDevice.AddVariableCommand+.��5  "   F� +����    @KL р�� @KL �@KL     �@KL ��� 	���#5556A   5     �� 5     $	����6%   #��[ 68   ���#666$��24��5	  &   $��24��61   #��[ 6=   $< 导入点位信息��6o   5
     � 5     $��3��6   $��	10,0,10,5q�6,   # 5     �� 5  "   $��* �63   �� 5  "   $
��1.5* �63   �� 5  "   $��20 �63   �� 5  "   $��20 �63   .+�5     �� $��点位名称��6(   ���#999$��Center=�6F   �� 5     $��地址��6(   $��1��62   ���#999$��Center=�6T   5     �� 5     $��4��6'   $	��200��64   $��Hidden=�6D   $��10,0,0,5q�6i   .��5     �� $��0,0,10,0q�6^   ��6+   �� *CurrentDevice.VariableList+��5  "   �� 5  &   .R�5  *   � $
��root��6<   $	��0,1q�6/   # 5  .   �� 5  2   �� 5  2   $
��1.5* �6C   �� 5  2   $
��auto �6C   �� 5  2   $
��auto �6C   .+�5!  .   �� ��66   �� *	VarName+�� 5"  .   $��1��6R   $��Center=�6b   $��2,0,0,0q�6�   ��66   �� *
VarAddress+6�   �� 5#  .   $��3��68   $��Center=�6H   $��Center=�6c   �� 5$  .   #��[ 68   $
I None{�6_   J 5%  8   �� $	+ win��$5 /DataContext.CurrentDevice.DeleteVariableCommand�K 5&  8   �� .�6U   6_   5'  /   d� 5(  .   $��tb��6K   $��2��6;   $��3q�6U   #��[ 6`   $��20��6�   � 5)  .   O � 	StaysOpen$O False��64   P � AllowsTransparency$
P True��5*  ]   Q � VerticalOffset$Q 2��5+  0   R � HorizontalOffset$R 0��6C   ��5)  F   �� $+ tb��$ 	IsChecked�S � PlacementTargetS 5*  0   �� $
+ root��.��5,  2   �� ���#F7F9FA$ 5��5-  5   ���#DDD$��1q�6Y   $��3q�6m   ��5,  N   �� $
+ root��$ ActualWidth�T J� EffectT 5.  6     5/  :   $ 10Q�6K   $	! 0.1Q�6[   $
 Gray��6i   $  0Q�6v   ._�51  6   � $��3��6;   $
��10,5q�6H   # 52  :   �� 53  >   $��65 �6O   �� 54  >   ' 56  :   �� 57  >   $��30 �6L   �� 58  >   $��30 �6L   .+�5:  :   �� $��	偏移量��6D   ���#333$��Center=�6a   �� 5;  :   $��系数��6D   $��1��6N   ���#333$��Center=�6m   �� 5=  :   $��1��6Z   $��Center=�6j   $��Center=�5>  >   ��5=  B   �� *Offset+5>  >   �� 5?  :   $��1��6[   $��1��6h   $��Center=�6x   $��Center=�5@  >   ��5?  B   �� *	Modulus+5@  >   5A  7   5B  3   5C  /   5D  +   5E  '   5G     5H     5I     5J     5K     5L     �� 5O  
   $��1��6   $��Bottom=�6!   $��Center=�5P     $��42��6*   $ 10��66   $��0,0,0,20q�5Q     ��5R     �� 5S     $	 0,0&�6&   $	 0,1&�67   .��5T     � $ #F7F9FA��6#   $ 0Q�63   � 5U     $
 #DDD��6#   $ 1Q�60   5V     T 5X       5Y     $ 10Q�6#   $
 #BBB��63   $  0Q�6@   $	! 0.3Q�6P   ._�5[     � $	��260��6   ���#999$��18(�6;   # 5\     �� 5]     �� 5^     �� 5_     $��5 �6'   �� 5`     �� 5a     �� 5b     .+�5d     d� -   5        $��tb_component��5d     $
) TrueY�63   $; 	10,0,0,10��6D    	 StateButtonStyle#��[	 6T   $��1q�6~   .��5e     �� .+�5f     �� $	����6$   #��[ 64   $��Center=�5g  $   $	��0,1q�6A   �� 5h     $��组件��6$   $��9(�6.   $��Center=�6;   5i     5j     d� 5k     -   5        $��tb_property��5k  /   $��1��6   $
) TrueY�6B   #��[	 6S   $��1q�6}   .��5l     �� .+�5m     �� $	����6$   #��[ 64   $��Center=�5n  $   $	��0,1q�6A   �� 5o     $��属性��6$   $��9(�6.   $��Center=�6;   5p     5q     �� 5r     
�������$��2��6-   $��Center=�6=   $��1,0,0,0q�6Z   $	��0,8q�5s     ._�5t     �� ���#CCC$��1,0,0,0q�60   $��1��6J   5u     �� 5v     $��3��6    
 ControlButtonStyle#��[
 6)   .��5w     �� .+�5x     �� $	����6$   #��[ 64   $��Center=�5y  $   $	��0,1q�6A   �� 5z     $��删除��6$   $��9(�6.   $��Center=�6;   5{     5|     �� 5}     -   5        $��btnSave��5  F   $��4��5}     #��[
 6)   ��5~     �� *SaveCommand+��5     �� $	+ win��.��5�     �� .+�5�     �� $	����6$   #��[ 64   $��Center=�5�  $   $	��0,1q�6A   �� 5�     $��保存��6$   $��9(�6.   $��Center=�6;   5�     5�     �� 5�     -   5        $��5��5�     #��[
 6)   $; 	0,10,10,0��6U   .��5�     �� .+�5�     �� $	����6$   #��[ 64   $��Center=�5�  $   $	��0,1q�6A   �� 5�     $��退出��6$   $��9(�6.   $��Center=�6;   5�     5�     5�     5�     5�     5�     