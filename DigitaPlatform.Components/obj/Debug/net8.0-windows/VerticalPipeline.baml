   M S B A M L   `   `   `  ����T  PDigitaPlatform.Components, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:DigitaPlatform.ComponentsDigitaPlatform.Components  5      0    *DigitaPlatform.Components.VerticalPipeline   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:DigitaPlatform.Components     5        � 	Resources  5	         b2v �� 
TargetType  DeleteButtonStyle �� Property �� Value �� 
TargetType �� CornerRadius �� Triggers P� Property P� Value	 �� 
TargetName��%�  &	        &	      �� 5
   
   6'   �� 5   
   " ��6   .�5      ��  � �� 5      �� 5      " ��6&   .R�5      �� $
��root��68   ���	#55000000$ 11��6D   ._�5      �� $��Center=�6/   $��Center=�6J   5       5      P� 5       �@J�IsMouseOver$
 True��6=   . �5   "   �� $
	 root��6)    � �� �	#880000006Q   5      5      5      5      5      .��5      � '  !System.Windows.VisualStateManager
   VisualStateGroups
 5   
   %  System.Windows.VisualStateGroup  5         States. 5          System.Windows.VisualState     Name$ EWFlowState��6      
Storyboard. 5!      ��  g� RepeatBehavior$ Forever��6!   .��5"      W�  g� Duration$ 0:0:1D�6*    W� From 06;   	 W� To 56D    �� 
TargetName$ 
liquidLine��5#   *    �� TargetProperty$ StrokeDashOffset�5$   *   5%      5&        5'      $ WEFlowState��6   . 5(      �� $ Forever��6!   .��5)      W� $ 0:0:1D�6*    06;    -56D   $ 
liquidLine��5*   *   $ StrokeDashOffset�5+   *   5,      5-      5.      .+�50   
   �� $ 2��6   $��5q�6"   ��51      �� 52       �� EndPoint$	 1,0&�6&    �� 
StartPoint$	 0,0&�65   .��53      �  � Color$ 	#FFCBCBCB��6#    � Offset$	 0.8Q�65   � 54      $ White��6#   $	 0.5Q�61   � 55      $ 	#FFCBCBCB��6#   $	 0.1Q�65   56      ._�58      �� -   5        $��border��58       $��2q�6   ._�59      �� -   5        $��
liquidLine��5=   4   	 �� X1$ 0��59      	 �� Y1$ 0��6   	 �� X2$ 0��6%    �� StrokeDashArray$	 2,3R�5;   W    �� StrokeDashCap$ Round=�5<       �� Stretch$
 Fill=�6-    �� StrokeEndLineCap$ Round=�6<    �� StrokeStartLineCap$ Round=�6U   $��Center=�5=        J� Opacity$	  0.3Q�6F   	! �� Y2! 5:      �� " �� ElementName$" border��# �� Path$# ActualHeight���6K   �� *LiquidColor+$ �� RelativeSource$ �� % �� AncestorType% UserControl& �� Mode$& FindAncestor=���5;      �� $" border��$# ActualWidth�5=   F   5>      5?      � 5B   
   y�6   �� *
IsSelected+' �� 	Converter#' [  $
" root��.+�5C      �� ���#AAA$	 3,3R�6&   ( �� RadiusX$( 5��6<   ) �� RadiusY$) 5��6H   A� 5D      -   5        $��10��5D      $��10��6!   
�������$��Center=�6:   $��Right=�6U   ���#AAA$��-5q�5E       * � Cursor$* SizeWE��6,   5H      A� 5I      -   5        $��10��5I      $��10��6!   
�������$��Bottom=�6:   $��Center=�6U   ���#AAA$��-5q�5J       $* SizeNS��6,   5M      5N      �� 5P   
   -   5        $��	0,0,-25,0q�5P      $	��Top=�5Q      $��Right=�6)   #��[ 5R      $��22��6<   $��22��6H   y�5P   $   �� *
IsSelected+#' [  .��5T      � $��12��6   $��12��6   .+�5U      F� +����        р�� ��� Ѐ��     �    ��� 	
���  ��$��1��6@   $
 Fill=�6T   5V      5W      5X      5Y      