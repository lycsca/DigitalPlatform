   M S B A M L   `   `   `  ����T  PDigitaPlatform.Components, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:DigitaPlatform.ComponentsDigitaPlatform.Components  5      2    ,DigitaPlatform.Components.HorizontalPipeline   5      W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:DigitaPlatform.Components     5        � 	Resources  5	         b2v �� 
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
liquidLine��5*   *   $ StrokeDashOffset�5+   *   5,      5-      5.      .+�51   
   �� $ 2��6   $��5q�6"   ��52      �� 53       �� EndPoint$ 0.5,1&�6&    �� 
StartPoint$ 0.5,0&�67   .��54      �  � Color$ 	#FFCBCBCB��6#    � Offset$	 0.8Q�65   � 55      $ White��6#   $	 0.5Q�61   � 56      $ 	#FFCBCBCB��6#   $	 0.1Q�65   57      ._�59      �� -   5        $��border��59       $��2q�6   ._�5:      �� -   5        $��
liquidLine��5>   2   	 �� X1$ 0��5:      	 �� Y1$ 0��6   	 �� Y2$ 0��5;       �� StrokeDashArray$	 2,3R�5<   X    �� StrokeDashCap$ Round=�5=       �� Stretch$
 Fill=�6-    �� StrokeEndLineCap$ Round=�6<    �� StrokeStartLineCap$ Round=�6U   $��Center=�5>        J� Opacity$	  0.3Q�6D   	! �� X2! 5:   %   �� " �� RelativeSource" �� *Self+# �� Path$# ActualWidth���5;      �� *LiquidColor+" �� $ �� AncestorType$ UserControl% �� Mode$% FindAncestor=���5<      �� & �� ElementName$& border��$# ActualHeight�5>   D   5?      5@      � 5C   
   y�6   �� *
IsSelected+' �� 	Converter#' [  $
& root��.+�5D      �� ���#AAA$	 3,3R�6&   ( �� RadiusX$( 5��6<   ) �� RadiusY$) 5��6H   A� 5E      -   5        $��10��5E      $��10��6!   
�������$��Center=�6:   $��Right=�6U   ���#AAA$��-5q�5F       * � Cursor$* SizeWE��6,   5I      A� 5J      -   5        $��10��5J      $��10��6!   
�������$��Bottom=�6:   $��Center=�6U   ���#AAA$��-5q�5K       $* SizeNS��6,   5N      5O      �� 5Q   
   -   5        $��	0,-25,0,0q�5Q      $	��Top=�5R      $��Right=�6)   #��[ 5S      $��22��6<   $��22��6H   y�5Q   $   �� *
IsSelected+#' [  .��5U      � $��12��6   $��12��6   .+�5V      F� +����        р�� ��� Ѐ��     �    ��� 	
���  ��$��1��6@   $
 Fill=�6T   5W      5X      5Y      5Z      