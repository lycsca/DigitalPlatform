   M S B A M L   `   `   `  ����T  PDigitaPlatform.Components, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:DigitaPlatform.ComponentsDigitaPlatform.Components  5      (    "DigitaPlatform.Components.RAJoints   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:DigitaPlatform.Components     5        J� Effect  5	      3  -System.Windows.Media.Effects.DropShadowEffect  5
   
      
BlurRadius$ 5Q�6      Color$
 #EEE��6*      Opacity$	 0.1Q�67      ShadowDepth$ 0Q�6E    � 	Resources 5         b2v �� 
TargetType  DeleteButtonStyle �� Property �� Value	 �� 
TargetType
 �� CornerRadius �� Triggers P� Property P� Value �� 
TargetName��%�  &	        &	      �� 5   
   6'   �� 5   
   " ��6   .�5      ��  � �� 5      �� 5      "	 ��6&   .R�5      �� $
��root��68   ���	#55000000$
 11��6D   ._�5      �� $��Center=�6/   $��Center=�6J   5       5      P� 5       �@J�IsMouseOver$
 True��6=   . �5   "   �� $
 root��6)    � �� �	#880000006Q   5      5      5      5      5      .��5       � .+�5!   
   � $��2q�6    J� RenderTransformOrigin$ 0.5,0.5&�6    � ColumnDefinitions 5"      �� 5#      �� 5$      �� 5%      $
��0.3* �6#   �� 5&      $��2* �6#   �� 5'      $
��0.3* �6#    � RowDefinitions 5)      �� 5*      $
��0.3* �6    �� 5+      $��2* �6    �� 5,      $
��0.3* �6    �� 5-      �� 5.      .+�50      �� $��1��6   $��1��6"   $��2��62   ��51      �� 52       �� 
StartPoint$	 0,0&�6*    �� EndPoint$	 0,1&�6;   .��53      �  � Color$ #16a1ff��6'    � Offset$ 0Q�67   � 54      $ #5EBFFF��6'   $	 0.5Q�67   � 55      $ #16a1ff��6'   $ 1Q�67   56      58      �� 59      $��2��6   $��3��6&   $��2��66   ��5:      �� 5;      $	 0,0&�6*   $	 1,0&�6;   .��5<      � $ #16a1ff��6'   $ 0Q�67   � 5=      $ #5EBFFF��6'   $	 0.4Q�67   � 5>      $ #16a1ff��6'   $ 1Q�67   5?      5A      F� 5B      .����    @KL �        �@KL @KL �@KL @KL 	$��3��62   $��1��6B    �� Stretch$
 Fill=�6O   ��5C      
� 5D       
� Center$	 0,1&�6*    
� GradientOrigin$	 0,1&�67    
� RadiusX$ 1Q�6L    
� RadiusY$ 1Q�6Y   .��5E      � $ #16a1ff��6'   $ 0Q�67   � 5F      $ #5EBFFF��6'   $	 0.5Q�67   � 5G      $ #16a1ff��6'   $ 1Q�67   5H      5J      �� 5L      ���#BBB$
 2��6'   $��3��68   �� 5M      ���#BBB$
 2��6'   $��2��68   $��4��6H   $��3��6U   z�5P      �� 5Q       �� Angle 6"   �� *RotateAngle+ �� RelativeSource ��  �� AncestorType local:ComponentBase5S      � 5V   
   y�6   �� *
IsSelected+ �� 	Converter# [  .+�5W      �� ���#AAA �� StrokeDashArray$	 3,3R�6&     �� RadiusX$  3��6<   ! �� RadiusY$! 3��6H   A� 5X      -   5        $��10��5X      $��10��6!   
�������$��Bottom=�6:   $��Right=�6U   ���#AAA$��-5q�5Y       " � Cursor$" SizeNWSE��6,   5\      5]      �� 5_   
   -   5        $��	0,0,-25,0q�5_      $	��Top=�5`      $��Right=�6)   #��[ 5a      $��22��6<   $��22��6H   y�5_   $   �� *
IsSelected+# [  .��5c      � $��12��6   $��12��6   .+�5d      F� +����        р�� ��� Ѐ��     �    ��� 	
���  ��$��1��6@   $
 Fill=�6T   5e      5f      5g      5h      