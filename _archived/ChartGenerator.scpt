FasdUAS 1.101.10   ��   ��    k             l     ��  ��      Constants.     � 	 	    C o n s t a n t s .   
  
 l     ����  r         m        �   p / U s e r s / c h a r l i e c / m y D e v / A p p l e S c r i p t s / A p p l e M u s i c W e e k l y C h a r t  o      ���� 0 libdir libDir��  ��        l    ����  r        m       �   � / U s e r s / c h a r l i e c / m y D e v / A p p l e S c r i p t s / A p p l e M u s i c W e e k l y C h a r t / W o r k i n g F o l d e r  o      ���� $0 workingfolderdir workingFolderDir��  ��        l    ����  r        b        o    	���� $0 workingfolderdir workingFolderDir  m   	 
   �     & / R e c e n t l y P l a y e d . c s v  o      ���� :0 recentlyplayedtrackscsvpath recentlyPlayedTracksCsvPath��  ��     ! " ! l     �� # $��   # 9 3set recentlyPlayedPlaylistName to "_weekly_played_"    $ � % % f s e t   r e c e n t l y P l a y e d P l a y l i s t N a m e   t o   " _ w e e k l y _ p l a y e d _ " "  & ' & l     ��������  ��  ��   '  ( ) ( l     �� * +��   *   Initialization.    + � , ,     I n i t i a l i z a t i o n . )  - . - l    /���� / r     0 1 0 I   �� 2��
�� .sysoloadscpt        file 2 4    �� 3
�� 
psxf 3 l    4���� 4 b     5 6 5 o    ���� 0 libdir libDir 6 m     7 7 � 8 8 * / A p p l e M u s i c U t i l s . s c p t��  ��  ��   1 o      ���� "0 applemusicutils AppleMusicUtils��  ��   .  9 : 9 l   " ;���� ; r    " < = < I    �� >��
�� .sysoexecTEXT���     TEXT > m     ? ? � @ @   d a t e   ' + % Y . % m . % d '��   = o      ���� 	0 today  ��  ��   :  A B A l     ��������  ��  ��   B  C D C l  # & E���� E r   # & F G F m   # $����   G o      ���� 0 	deltayear 	deltaYear��  ��   D  H I H l  ' * J���� J r   ' * K L K m   ' (����  L o      ���� 0 
deltamonth 
deltaMonth��  ��   I  M N M l  + . O���� O r   + . P Q P m   + ,����   Q o      ���� 0 deltaday deltaDay��  ��   N  R S R l  / 4 T���� T r   / 4 U V U o   / 0���� 	0 today   V o      ���� 0 newdate newDate��  ��   S  W X W l  5 R Y Z [ Y r   5 R \ ] \ I  5 N�� ^��
�� .sysoexecTEXT���     TEXT ^ b   5 J _ ` _ b   5 F a b a b   5 D c d c b   5 @ e f e b   5 > g h g b   5 : i j i m   5 8 k k � l l  d a t e   - v - j o   8 9���� 0 	deltayear 	deltaYear h m   : = m m � n n 
 y   - v - f o   > ?���� 0 
deltamonth 
deltaMonth d m   @ C o o � p p 
 m   - v - b o   D E���� 0 deltaday deltaDay ` m   F I q q � r r  d   ' + % Y . % m . % d '��   ] o      ���� 0 olddate oldDate Z - 'e.g. date -v-1y -v-2m -v-5d "+%Y.%m.%d"    [ � s s N e . g .   d a t e   - v - 1 y   - v - 2 m   - v - 5 d   " + % Y . % m . % d " X  t u t l     ��������  ��  ��   u  v w v l     �� x y��   x ! set newDate to "2025.07.05"    y � z z 6 s e t   n e w D a t e   t o   " 2 0 2 5 . 0 7 . 0 5 " w  { | { l     �� } ~��   } ! set oldDate to "2025.06.30"    ~ �   6 s e t   o l d D a t e   t o   " 2 0 2 5 . 0 6 . 3 0 " |  � � � l  S l ����� � r   S l � � � b   S h � � � b   S d � � � b   S ` � � � b   S \ � � � b   S X � � � o   S T���� $0 workingfolderdir workingFolderDir � m   T W � � � � �  / C h a r t _ � o   X [���� 0 newdate newDate � m   \ _ � � � � �  _ � o   ` c���� 0 olddate oldDate � m   d g � � � � �  . c s v � o      ���� *0 sortedtrackfilepath sortedTrackFilePath��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � M G Get all tracks that are recently played and save them into a csv file.    � � � � �   G e t   a l l   t r a c k s   t h a t   a r e   r e c e n t l y   p l a y e d   a n d   s a v e   t h e m   i n t o   a   c s v   f i l e . �  � � � l     �� � ���   � k eset recentlyPlayedTrackPIDs to AppleMusicUtils's getTrackPIDsFromPlaylist(recentlyPlayedPlaylistName)    � � � � � s e t   r e c e n t l y P l a y e d T r a c k P I D s   t o   A p p l e M u s i c U t i l s ' s   g e t T r a c k P I D s F r o m P l a y l i s t ( r e c e n t l y P l a y e d P l a y l i s t N a m e ) �  � � � l     �� � ���   � [ UAppleMusicUtils's savePIDsToCsv(recentlyPlayedTrackPIDs, recentlyPlayedTracksCsvPath)    � � � � � A p p l e M u s i c U t i l s ' s   s a v e P I D s T o C s v ( r e c e n t l y P l a y e d T r a c k P I D s ,   r e c e n t l y P l a y e d T r a c k s C s v P a t h ) �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � G A Execute the python helper script to process the play count data.    � � � � �   E x e c u t e   t h e   p y t h o n   h e l p e r   s c r i p t   t o   p r o c e s s   t h e   p l a y   c o u n t   d a t a . �  � � � l     �� � ���   � J Dset deltaDate to deltaYear & "Y" & deltaMonth & "m" & deltaDay & "d"    � � � � � s e t   d e l t a D a t e   t o   d e l t a Y e a r   &   " Y "   &   d e l t a M o n t h   &   " m "   &   d e l t a D a y   &   " d " �  � � � l  m � ����� � I  m ��� ���
�� .sysoexecTEXT���     TEXT � b   m � � � � b   m � � � � b   m ~ � � � b   m z � � � b   m v � � � b   m r � � � m   m p � � � � �  p y t h o n 3   � o   p q���� 0 libdir libDir � m   r u � � � � �  / C s v H e l p e r . p y � m   v y � � � � �    � o   z }���� 0 newdate newDate � m   ~ � � � � � �    � o   � ����� 0 olddate oldDate��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ( " Read track IDs from the temp csv.    � � � � D   R e a d   t r a c k   I D s   f r o m   t h e   t e m p   c s v . �  � � � l  � � ����� � r   � � � � � n  � � � � � I   � ��� ����� ,0 readchartdatafromcsv readChartDataFromCsv �  ��� � o   � ����� *0 sortedtrackfilepath sortedTrackFilePath��  ��   � o   � ����� "0 applemusicutils AppleMusicUtils � o      ���� 0 newchartdata newChartData��  ��   �  � � � l     ��������  ��  ��   �  � � � l  � � ����� � r   � � � � � n  � � � � � I   � ��� ����� 0 	getcolumn 	getColumn �  � � � o   � ����� 0 newchartdata newChartData �  ��� � m   � ����� ��  ��   � o   � ����� "0 applemusicutils AppleMusicUtils � o      ���� 0 pids  ��  ��   �  � � � l  � � ����� � r   � � � � � n  � � � � � I   � ��� ����� 0 	getcolumn 	getColumn �  � � � o   � ����� 0 newchartdata newChartData �  ��� � m   � ����� ��  ��   � o   � ����� "0 applemusicutils AppleMusicUtils � o      ���� 
0 deltas  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l  � � ����� � r   � � � � � J   � �����   � o      ���� 0 filteredpids filteredPIDs��  ��   �  � � � l  � � ����� � r   � � � � � m   � �����   � o      �� 0 counter  ��  ��   �  � � � l  �5 �~�}  X   �5�| k   �0  r   � � [   � �	 o   � ��{�{ 0 counter  	 m   � ��z�z  o      �y�y 0 counter   

 r   � � n   � � 4   � ��x
�x 
cobj m   � ��w�w  o   � ��v�v 	0 track   o      �u�u 0 pid    r   � � n   � � 4   � ��t
�t 
cobj m   � ��s�s  o   � ��r�r 	0 track   o      �q�q 	0 delta   �p Z   �0�o�n ?   �  c   � � o   � ��m�m 	0 delta   m   � ��l
�l 
long m   � ��k�k  k  ,  !  r  "#" o  �j�j 0 pid  # n      $%$  ;  	
% o  	�i�i 0 filteredpids filteredPIDs! &�h& I ,�g'�f
�g .ascrcmnt****      � ****' b  (()( b  $*+* b   ,-, b  ./. l 0�e�d0 c  121 o  �c�c 0 counter  2 m  �b
�b 
ctxt�e  �d  / m  33 �44  .  - n 565 I  �a7�`�a *0 gettrackinfofrompid getTrackInfoFromPID7 8�_8 o  �^�^ 0 pid  �_  �`  6 o  �]�] "0 applemusicutils AppleMusicUtils+ m   #99 �::  ,  ) o  $'�\�\ 	0 delta  �f  �h  �o  �n  �p  �| 	0 track   o   � ��[�[ 0 newchartdata newChartData�~  �}   � ;<; l     �Z�Y�X�Z  �Y  �X  < =>= l     �W�V�U�W  �V  �U  > ?�T? l     �S@A�S  @ Z TAppleMusicUtils's createPlaylistByPersistentID(filteredPIDs, "Charrrboard " & today)   A �BB � A p p l e M u s i c U t i l s ' s   c r e a t e P l a y l i s t B y P e r s i s t e n t I D ( f i l t e r e d P I D s ,   " C h a r r r b o a r d   "   &   t o d a y )�T       "�RCD  EFG�Q�P�OGHIJKLM�NN�M�L�K�J�I�H�G�F�E�D�C�B�A�@�R  C  �?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/�.�-�,�+�*�)�(�'�&�%�$�#�"�!� 
�? .aevtoappnull  �   � ****�> 0 libdir libDir�= $0 workingfolderdir workingFolderDir�< :0 recentlyplayedtrackscsvpath recentlyPlayedTracksCsvPath�; "0 applemusicutils AppleMusicUtils�: 	0 today  �9 0 	deltayear 	deltaYear�8 0 
deltamonth 
deltaMonth�7 0 deltaday deltaDay�6 0 newdate newDate�5 0 olddate oldDate�4 *0 sortedtrackfilepath sortedTrackFilePath�3 0 newchartdata newChartData�2 0 pids  �1 
0 deltas  �0 0 filteredpids filteredPIDs�/ 0 counter  �. 0 pid  �-  �,  �+  �*  �)  �(  �'  �&  �%  �$  �#  �"  �!  �   D �O��PQ�
� .aevtoappnull  �   � ****O k    5RR  
SS  TT  UU  -VV  9WW  CXX  HYY  MZZ  R[[  W\\  �]]  �^^  �__  �``  �aa  �bb  �cc  ���  �  �  P �� 	0 track  Q 0 � � �� 7�� ?������ k m o q� � � �� � � � ���
�	��������� ����3��9��� 0 libdir libDir� $0 workingfolderdir workingFolderDir� :0 recentlyplayedtrackscsvpath recentlyPlayedTracksCsvPath
� 
psxf
� .sysoloadscpt        file� "0 applemusicutils AppleMusicUtils
� .sysoexecTEXT���     TEXT� 	0 today  � 0 	deltayear 	deltaYear� 0 
deltamonth 
deltaMonth� 0 deltaday deltaDay� 0 newdate newDate� 0 olddate oldDate� *0 sortedtrackfilepath sortedTrackFilePath� ,0 readchartdatafromcsv readChartDataFromCsv�
 0 newchartdata newChartData�	 0 	getcolumn 	getColumn� 0 pids  � 
0 deltas  � 0 filteredpids filteredPIDs� 0 counter  
� 
kocl
� 
cobj
� .corecnte****       ****� 0 pid  �  	0 delta  
�� 
long
�� 
ctxt�� *0 gettrackinfofrompid getTrackInfoFromPID
�� .ascrcmnt****      � ****�6�E�O�E�O��%E�O*���%/j E�O�j E�OjE�OkE�OjE�O�E` Oa �%a %�%a %�%a %j E` O�a %_ %a %_ %a %E` Oa �%a %a %_ %a %_ %j O�_ k+ E` O�_ kl+  E` !O�_ ll+  E` "OjvE` #OjE` $O s_ [a %a &l 'kh  _ $kE` $O�a &k/E` (O�a &l/E` )O_ )a *&k ._ (_ #6FO_ $a +&a ,%�_ (k+ -%a .%_ )%j /Y h[OY��E �dd � / U s e r s / c h a r l i e c / m y D e v / A p p l e S c r i p t s / A p p l e M u s i c W e e k l y C h a r t / W o r k i n g F o l d e r / R e c e n t l y P l a y e d . c s vF ��e f��  e k      gg hih l      ��jk��  jIC
on exportAllPlayCounts()	set targetPlaylist to "_ALL_"	set musicData to {}	set progressCounter to 0		tell application "Music"		set playlistTracks to tracks of playlist targetPlaylist		repeat with aTrack in playlistTracks			set progressCounter to progressCounter + 1			if (progressCounter mod 100 = 0) then				log (progressCounter as text) & "/" & ((count of playlistTracks) as text)			end if			set trackInfo to {persistent ID of aTrack, played count of aTrack}			copy trackInfo to end of musicData		end repeat	end tell		return musicDataend exportAllPlayCounts   k �ll� 
 o n   e x p o r t A l l P l a y C o u n t s ( )  	 s e t   t a r g e t P l a y l i s t   t o   " _ A L L _ "  	 s e t   m u s i c D a t a   t o   { }  	 s e t   p r o g r e s s C o u n t e r   t o   0  	  	 t e l l   a p p l i c a t i o n   " M u s i c "  	 	 s e t   p l a y l i s t T r a c k s   t o   t r a c k s   o f   p l a y l i s t   t a r g e t P l a y l i s t  	 	 r e p e a t   w i t h   a T r a c k   i n   p l a y l i s t T r a c k s  	 	 	 s e t   p r o g r e s s C o u n t e r   t o   p r o g r e s s C o u n t e r   +   1  	 	 	 i f   ( p r o g r e s s C o u n t e r   m o d   1 0 0   =   0 )   t h e n  	 	 	 	 l o g   ( p r o g r e s s C o u n t e r   a s   t e x t )   &   " / "   &   ( ( c o u n t   o f   p l a y l i s t T r a c k s )   a s   t e x t )  	 	 	 e n d   i f  	 	 	 s e t   t r a c k I n f o   t o   { p e r s i s t e n t   I D   o f   a T r a c k ,   p l a y e d   c o u n t   o f   a T r a c k }  	 	 	 c o p y   t r a c k I n f o   t o   e n d   o f   m u s i c D a t a  	 	 e n d   r e p e a t  	 e n d   t e l l  	  	 r e t u r n   m u s i c D a t a  e n d   e x p o r t A l l P l a y C o u n t s i mnm l     ��������  ��  ��  n opo i     qrq I      ��s���� B0 exportplaylistplaycountsinbatch exportPlaylistPlayCountsInBatchs tut o      ����  0 targetplaylist targetPlaylistu vwv o      ���� 0 	batchsize 	batchSizew x��x o      ���� 0 savefiledir saveFileDir��  ��  r k     nyy z{z r     |}| J     ����  } o      ���� 0 	musicdata 	musicData{ ~~ r    ��� m    ���� � o      ���� 0 trackcounter trackCounter ��� r   	 ��� m   	 
���� � o      ���� 0 batchcounter batchCounter� ��� l   ��������  ��  ��  � ���� O    n��� k    m�� ��� r    ��� n    ��� 2   ��
�� 
cTrk� 4    ���
�� 
cPly� o    ����  0 targetplaylist targetPlaylist� o      ����  0 playlisttracks playlistTracks� ��� X    d����� k   * _�� ��� r   * 4��� J   * 2�� ��� n   * -��� 1   + -��
�� 
pPIS� o   * +���� 0 atrack aTrack� ���� n   - 0��� 1   . 0��
�� 
pPlC� o   - .���� 0 atrack aTrack��  � o      ���� 0 	trackinfo 	trackInfo� ��� s   5 9��� o   5 6���� 0 	trackinfo 	trackInfo� n      ���  ;   7 8� o   6 7���� 0 	musicdata 	musicData� ��� Z   : Y������� l  : ?������ =   : ?��� `   : =��� o   : ;���� 0 trackcounter trackCounter� o   ; <���� 0 	batchsize 	batchSize� m   = >����  ��  ��  � k   B U�� ��� n  B J��� I   C J������� ,0 saveplaycounttobatch savePlayCountToBatch� ��� o   C D���� 0 	musicdata 	musicData� ��� o   D E���� 0 savefiledir saveFileDir� ���� o   E F���� 0 batchcounter batchCounter��  ��  �  f   B C� ��� r   K O��� J   K M����  � o      ���� 0 	musicdata 	musicData� ���� r   P U��� [   P S��� o   P Q���� 0 batchcounter batchCounter� m   Q R���� � o      ���� 0 batchcounter batchCounter��  ��  ��  � ���� r   Z _��� [   Z ]��� o   Z [���� 0 trackcounter trackCounter� m   [ \���� � o      ���� 0 trackcounter trackCounter��  �� 0 atrack aTrack� o    ����  0 playlisttracks playlistTracks� ���� n  e m��� I   f m������� ,0 saveplaycounttobatch savePlayCountToBatch� ��� o   f g���� 0 	musicdata 	musicData� ��� o   g h���� 0 savefiledir saveFileDir� ���� o   h i���� 0 batchcounter batchCounter��  ��  �  f   e f��  � m    ���                                                                                      @ alis    ,  Macintosh HD               �<�*BD ����	Music.app                                                      �����<�*        ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��  ��  p ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� ,0 saveplaycounttobatch savePlayCountToBatch� ��� o      ���� 0 	musicdata 	musicData� ��� o      ���� 0 savefiledir saveFileDir� ���� o      ���� 0 batchcounter batchCounter��  ��  � k     '�� ��� r     	��� b     ��� b     ��� b     ��� o     ���� 0 savefiledir saveFileDir� m    �� ���  / e x p o r t _� o    ���� 0 batchcounter batchCounter� m    �� ���  . c s v� o      ���� 0 savepath savePath� ��� I  
 �����
�� .ascrcmnt****      � ****� b   
 ��� b   
 ��� b   
 ��� b   
 ��� b   
 ��� b   
    m   
  �  S a v i n g   l   ���� I   ����
�� .corecnte****       **** o    ���� 0 	musicdata 	musicData��  ��  ��  � m     � ,   t r a c k   d a t a   b a t c h   N o .  � o    ���� 0 batchcounter batchCounter� m     �		    t o  � o    ���� 0 savepath savePath� m    

 �  .��  � �� n    ' I   ! '������ *0 saveplaycountstocsv savePlayCountsToCsv  o   ! "���� 0 	musicdata 	musicData �� o   " #���� 0 savepath savePath��  ��    f     !��  �  l     ��������  ��  ��    l     ��������  ��  ��    i     I      ������ *0 saveplaycountstocsv savePlayCountsToCsv  o      ���� 0 playcountdata playCountData �� o      ���� 0 savefilepath saveFilePath��  ��   k     �  !  r     "#" b     $%$ m     && �''  I D , P l a y e d   C o u n t% o    ��
�� 
ret # o      ���� 0 
csvcontent 
csvContent! ()( X    ,*��+* r    ',-, b    %./. b    #010 b    232 b    454 o    ���� 0 
csvcontent 
csvContent5 l   6����6 n    787 4    ��9
�� 
cobj9 m    ���� 8 o    ���� 0 itemdata itemData��  ��  3 m    :: �;;  ,1 l   "<����< n    "=>= 4    "��?
�� 
cobj? m     !���� > o    ���� 0 itemdata itemData��  ��  / o   # $��
�� 
ret - o      ���� 0 
csvcontent 
csvContent�� 0 itemdata itemData+ o   	 
���� 0 playcountdata playCountData) @A@ l  - -����~��  �  �~  A BCB Q   - }DEFD k   0 [GG HIH r   0 <JKJ I  0 :�}LM
�} .rdwropenshor       fileL 4   0 4�|N
�| 
psxfN o   2 3�{�{ 0 savefilepath saveFilePathM �zO�y
�z 
permO m   5 6�x
�x boovtrue�y  K o      �w�w 0 fileref fileRefI PQP I  = D�vRS
�v .rdwrseofnull���     ****R o   = >�u�u 0 fileref fileRefS �tT�s
�t 
set2T m   ? @�r�r  �s  Q UVU I  E N�qWX
�q .rdwrwritnull���     ****W o   E F�p�p 0 
csvcontent 
csvContentX �oYZ
�o 
refnY o   G H�n�n 0 fileref fileRefZ �m[�l
�m 
as  [ m   I J�k
�k 
utf8�l  V \]\ I  O T�j^�i
�j .rdwrclosnull���     ****^ o   O P�h�h 0 fileref fileRef�i  ] _�g_ L   U [`` b   U Zaba m   U Xcc �dd * C S V   f i l e   c r e a t e d   a t :  b o   X Y�f�f 0 savefilepath saveFilePath�g  E R      �ee�d
�e .ascrerr ****      � ****e o      �c�c 0 errmsg errMsg�d  F k   c }ff ghg Q   c tij�bi I  f k�ak�`
�a .rdwrclosnull���     ****k o   f g�_�_ 0 fileref fileRef�`  j R      �^�]�\
�^ .ascrerr ****      � ****�]  �\  �b  h l�[l R   u }�Zm�Y
�Z .ascrerr ****      � ****m b   w |non m   w zpp �qq , F a i l e d   t o   w r i t e   f i l e :  o o   z {�X�X 0 errmsg errMsg�Y  �[  C rsr l  ~ ~�W�V�U�W  �V  �U  s t�Tt I  ~ ��Su�R
�S .ascrcmnt****      � ****u b   ~ �vwv m   ~ �xx �yy * C S V   f i l e   c r e a t e d   a t :  w o   � ��Q�Q 0 savefilepath saveFilePath�R  �T   z{z l     �P�O�N�P  �O  �N  { |}| l      �M~�M  ~3-on batchSavePlayCountsToCsvs(playCountData, batchNumber, saveFileDir)	set batchData to recursiveSplit(playCountData, batchNumber, {})	repeat with batch in batchData		log (count of batch)	end repeatend batchSavePlayCountsToCsvson recursiveSplit(sourceList, chunkSize, accumulator)	if (count of sourceList) � chunkSize then		return accumulator & {sourceList}	else		set newAcc to accumulator & {items 1 thru chunkSize of sourceList}		return recursiveSplit(items (chunkSize + 1) thru -1 of sourceList, chunkSize, newAcc)	end ifend recursiveSplit    ���Z  o n   b a t c h S a v e P l a y C o u n t s T o C s v s ( p l a y C o u n t D a t a ,   b a t c h N u m b e r ,   s a v e F i l e D i r )  	 s e t   b a t c h D a t a   t o   r e c u r s i v e S p l i t ( p l a y C o u n t D a t a ,   b a t c h N u m b e r ,   { } )  	 r e p e a t   w i t h   b a t c h   i n   b a t c h D a t a  	 	 l o g   ( c o u n t   o f   b a t c h )  	 e n d   r e p e a t  e n d   b a t c h S a v e P l a y C o u n t s T o C s v s   o n   r e c u r s i v e S p l i t ( s o u r c e L i s t ,   c h u n k S i z e ,   a c c u m u l a t o r )  	 i f   ( c o u n t   o f   s o u r c e L i s t )  "d   c h u n k S i z e   t h e n  	 	 r e t u r n   a c c u m u l a t o r   &   { s o u r c e L i s t }  	 e l s e  	 	 s e t   n e w A c c   t o   a c c u m u l a t o r   &   { i t e m s   1   t h r u   c h u n k S i z e   o f   s o u r c e L i s t }  	 	 r e t u r n   r e c u r s i v e S p l i t ( i t e m s   ( c h u n k S i z e   +   1 )   t h r u   - 1   o f   s o u r c e L i s t ,   c h u n k S i z e ,   n e w A c c )  	 e n d   i f  e n d   r e c u r s i v e S p l i t } ��� l     �L�K�J�L  �K  �J  � ��� i    ��� I      �I��H�I <0 createplaylistbypersistentid createPlaylistByPersistentID� ��� o      �G�G 0 persistentids persistentIDs� ��F� o      �E�E 0 playlistname playlistName�F  �H  � O     ���� k    ��� ��� l   �D���D  �  	 ????????   � ���   R^�zzv}d�e>R�h� ��� r    ��� I   �C�B�
�C .corecrel****      � null�B  � �A��
�A 
kocl� m    �@
�@ 
cUsP� �?��>
�? 
prdt� K    �� �=��<
�= 
pnam� o   	 
�;�; 0 playlistname playlistName�<  �>  � o      �:�: 0 newplaylist newPlaylist� ��� r    ��� m    �9�9  � o      �8�8 0 successcount successCount� ��� l   �7�6�5�7  �6  �5  � ��� l   �4���4  �  	 ????ID??   � ���   �MS�cNE I Dep~�� ��� X    s��3�� Q   ' n���� k   * W�� ��� l  * *�2���2  �  	 ??????ID   � ���   |�xnS9�McNE I D� ��� r   * 8��� l  * 6��1�0� 6  * 6��� 2   * -�/
�/ 
cTrk� =  . 5��� 1   / 1�.
�. 
pPIS� o   2 4�-�- 0 persistentid persistentID�1  �0  � o      �,�, 0 foundtracks foundTracks� ��+� Z   9 W���*�)� ?   9 @��� l  9 >��(�'� I  9 >�&��%
�& .corecnte****       ****� o   9 :�$�$ 0 foundtracks foundTracks�%  �(  �'  � m   > ?�#�#  � k   C S�� ��� I  C M�"��
�" .coreclon****      � ****� l  C G��!� � n   C G��� 4   D G��
� 
cobj� m   E F�� � o   C D�� 0 foundtracks foundTracks�!  �   � ���
� 
insh� o   H I�� 0 newplaylist newPlaylist�  � ��� r   N S��� [   N Q��� o   N O�� 0 successcount successCount� m   O P�� � o      �� 0 successcount successCount�  �*  �)  �+  � R      ���
� .ascrerr ****      � ****� o      �� 0 errmsg errMsg�  � I  _ n���
� .ascrcmnt****      � ****� b   _ j��� b   _ h��� b   _ d��� m   _ b�� ��� N F a i l e d   t o   f i n d   t r a c k   w i t h   p e r s i s t e n   I D  � o   b c�� 0 persistentid persistentID� m   d g�� ���  .  � o   h i�� 0 errmsg errMsg�  �3 0 persistentid persistentID� o    �� 0 persistentids persistentIDs� ��� l  t t����  �  �  � ��
� L   t ��� b   t ���� b   t ���� b   t ���� b   t ��� b   t }��� b   t y��� m   t w�� ��� < S u c c e s s f u l l y   c r e a t e d   p l a y l i s t  � o   w x�	�	 0 playlistname playlistName� m   y |�� ���    w i t h  � o   } ~�� 0 successcount successCount� m    ��� ���  /� l  � ����� I  � ����
� .corecnte****       ****� o   � ��� 0 persistentids persistentIDs�  �  �  � m   � ��� ���    t r a c k s .�
  � m     ���                                                                                      @ alis    ,  Macintosh HD               �<�*BD ����	Music.app                                                      �����<�*        ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��  � ��� l     ��� �  �  �   � ��� l     ��������  ��  ��  � � � l      ����  ��
on getTrackPIDsFromPlaylist(playlistName)	tell application "Music"		set targetPlaylist to playlist playlistName				set outputList to {}		repeat with aTrack in tracks of targetPlaylist			set trackId to persistent ID of aTrack			set end of outputList to trackId		end repeat				return outputList	end tellend getTrackPIDsFromPlaylist


on savePIDsToCsv(pids, saveFilePath)	set csvContent to ""	repeat with pid in pids		set csvContent to csvContent & pid & return	end repeat		try		set fileRef to open for access POSIX file saveFilePath with write permission		set eof fileRef to 0		write csvContent to fileRef as �class utf8�		close access fileRef		return "CSV file created at: " & saveFilePath	on error errMsg		try			close access fileRef		end try		error "Failed to write file: " & errMsg	end try		log "CSV file created at: " & saveFilePathend savePIDsToCsv

on getTrackTitlesFromPlaylist(playlistName)	tell application "Music"		set targetPlaylist to playlist playlistName				set outputList to {}		repeat with aTrack in tracks of targetPlaylist			set trackId to name of aTrack			set end of outputList to trackId		end repeat				return outputList	end tellend getTrackTitlesFromPlaylist    �	� 
 o n   g e t T r a c k P I D s F r o m P l a y l i s t ( p l a y l i s t N a m e )  	 t e l l   a p p l i c a t i o n   " M u s i c "  	 	 s e t   t a r g e t P l a y l i s t   t o   p l a y l i s t   p l a y l i s t N a m e  	 	  	 	 s e t   o u t p u t L i s t   t o   { }  	 	 r e p e a t   w i t h   a T r a c k   i n   t r a c k s   o f   t a r g e t P l a y l i s t  	 	 	 s e t   t r a c k I d   t o   p e r s i s t e n t   I D   o f   a T r a c k  	 	 	 s e t   e n d   o f   o u t p u t L i s t   t o   t r a c k I d  	 	 e n d   r e p e a t  	 	  	 	 r e t u r n   o u t p u t L i s t  	 e n d   t e l l  e n d   g e t T r a c k P I D s F r o m P l a y l i s t 
 
 
 o n   s a v e P I D s T o C s v ( p i d s ,   s a v e F i l e P a t h )  	 s e t   c s v C o n t e n t   t o   " "  	 r e p e a t   w i t h   p i d   i n   p i d s  	 	 s e t   c s v C o n t e n t   t o   c s v C o n t e n t   &   p i d   &   r e t u r n  	 e n d   r e p e a t  	  	 t r y  	 	 s e t   f i l e R e f   t o   o p e n   f o r   a c c e s s   P O S I X   f i l e   s a v e F i l e P a t h   w i t h   w r i t e   p e r m i s s i o n  	 	 s e t   e o f   f i l e R e f   t o   0  	 	 w r i t e   c s v C o n t e n t   t o   f i l e R e f   a s   � c l a s s   u t f 8 �  	 	 c l o s e   a c c e s s   f i l e R e f  	 	 r e t u r n   " C S V   f i l e   c r e a t e d   a t :   "   &   s a v e F i l e P a t h  	 o n   e r r o r   e r r M s g  	 	 t r y  	 	 	 c l o s e   a c c e s s   f i l e R e f  	 	 e n d   t r y  	 	 e r r o r   " F a i l e d   t o   w r i t e   f i l e :   "   &   e r r M s g  	 e n d   t r y  	  	 l o g   " C S V   f i l e   c r e a t e d   a t :   "   &   s a v e F i l e P a t h  e n d   s a v e P I D s T o C s v 
 
  o n   g e t T r a c k T i t l e s F r o m P l a y l i s t ( p l a y l i s t N a m e )  	 t e l l   a p p l i c a t i o n   " M u s i c "  	 	 s e t   t a r g e t P l a y l i s t   t o   p l a y l i s t   p l a y l i s t N a m e  	 	  	 	 s e t   o u t p u t L i s t   t o   { }  	 	 r e p e a t   w i t h   a T r a c k   i n   t r a c k s   o f   t a r g e t P l a y l i s t  	 	 	 s e t   t r a c k I d   t o   n a m e   o f   a T r a c k  	 	 	 s e t   e n d   o f   o u t p u t L i s t   t o   t r a c k I d  	 	 e n d   r e p e a t  	 	  	 	 r e t u r n   o u t p u t L i s t  	 e n d   t e l l  e n d   g e t T r a c k T i t l e s F r o m P l a y l i s t    l     ��������  ��  ��    l     ��������  ��  ��   	 i    

 I      ������ 20 saveplaylisttrackstotxt savePlaylistTracksToTxt  o      ���� 0 playlistname playlistName �� o      ���� 0 savefilepath saveFilePath��  ��   O     F k    E  r     m     �   o      ���� 0 
txtcontent 
txtContent  l   ��������  ��  ��    r     4    ��
�� 
cPly o   
 ���� 0 playlistname playlistName o      ����  0 targetplaylist targetPlaylist  !  X    5"��#" r   ! 0$%$ b   ! .&'& b   ! ,()( b   ! (*+* b   ! &,-, o   ! "���� 0 
txtcontent 
txtContent- n   " %./. 1   # %��
�� 
pArt/ o   " #���� 0 atrack aTrack+ m   & '00 �11    -  ) n   ( +232 1   ) +��
�� 
pnam3 o   ( )���� 0 atrack aTrack' o   , -��
�� 
ret % o      ���� 0 
txtcontent 
txtContent�� 0 atrack aTrack# n    454 2   ��
�� 
cTrk5 o    ����  0 targetplaylist targetPlaylist! 676 l  6 6��������  ��  ��  7 8��8 I  6 E��9��
�� .sysoexecTEXT���     TEXT9 b   6 A:;: b   6 =<=< b   6 ;>?> m   6 7@@ �AA 
 e c h o  ? n   7 :BCB 1   8 :��
�� 
strqC o   7 8���� 0 
txtcontent 
txtContent= m   ; <DD �EE :   |   i c o n v   - f   U T F - 8   - t   U T F - 8   >  ; n   = @FGF 1   > @��
�� 
strqG o   = >���� 0 savefilepath saveFilePath��  ��   m     HH�                                                                                      @ alis    ,  Macintosh HD               �<�*BD ����	Music.app                                                      �����<�*        ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��  	 IJI l     ��������  ��  ��  J KLK l     ��������  ��  ��  L MNM i    OPO I      ��Q���� (0 savetrackinfototxt saveTrackInfoToTxtQ RSR o      ���� 0 persistentids persistentIDsS T��T o      ���� 0 savefilepath saveFilePath��  ��  P O     OUVU k    NWW XYX r    Z[Z m    \\ �]]  [ o      ���� 0 
txtcontent 
txtContentY ^_^ l   ��������  ��  ��  _ `a` X    >b��cb k    9dd efe r    )ghg l   'i����i 6   'jkj n    lml 3    ��
�� 
cTrkm 4    ��n
�� 
cLiPn m    ���� k =   &opo 1     "��
�� 
pPISp o   # %���� 0 pid  ��  ��  h o      ���� 0 atrack aTrackf q��q r   * 9rsr b   * 7tut b   * 5vwv b   * 1xyx b   * /z{z o   * +���� 0 
txtcontent 
txtContent{ n   + .|}| 1   , .��
�� 
pArt} o   + ,���� 0 atrack aTracky m   / 0~~ �    -  w n   1 4��� 1   2 4��
�� 
pnam� o   1 2���� 0 atrack aTracku o   5 6��
�� 
ret s o      ���� 0 
txtcontent 
txtContent��  �� 0 pid  c o    ���� 0 persistentids persistentIDsa ��� l  ? ?��������  ��  ��  � ���� I  ? N�����
�� .sysoexecTEXT���     TEXT� b   ? J��� b   ? F��� b   ? D��� m   ? @�� ��� 
 e c h o  � n   @ C��� 1   A C��
�� 
strq� o   @ A���� 0 
txtcontent 
txtContent� m   D E�� ��� :   |   i c o n v   - f   U T F - 8   - t   U T F - 8   >  � n   F I��� 1   G I��
�� 
strq� o   F G���� 0 savefilepath saveFilePath��  ��  V m     ���                                                                                      @ alis    ,  Macintosh HD               �<�*BD ����	Music.app                                                      �����<�*        ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��  N ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� ,0 readchartdatafromcsv readChartDataFromCsv� ���� o      ���� 0 filepath filePath��  ��  � k     ��� ��� r     ��� J     ����  � o      ���� 0 csvdata csvData� ���� Q    ����� k    p�� ��� r    ��� I   �����
�� .rdwropenshor       file� o    	���� 0 filepath filePath��  � o      ���� 0 fileref fileRef� ��� r    ��� I   �����
�� .rdwrread****        ****� o    ���� 0 fileref fileRef��  � o      ���� 0 csvtext csvText� ��� I   �����
�� .rdwrclosnull���     ****� o    ���� 0 fileref fileRef��  � ��� l   ��������  ��  ��  � ��� r    5��� J    $�� ��� n   !��� 1    !��
�� 
txdl� 1    ��
�� 
ascr� ���� m   ! "�� ���  ,��  � J      �� ��� o      ���� 0 olddelimiters oldDelimiters� ���� n     ��� 1   1 3��
�� 
txdl� 1   0 1��
�� 
ascr��  � ��� l  6 6��������  ��  ��  � ��� r   6 ;��� n   6 9��� 2  7 9��
�� 
cpar� o   6 7���� 0 csvtext csvText� o      ���� 0 rows  � ��� X   < g����� Z   L b������� ?   L Q��� n   L O��� 1   M O�
� 
leng� o   L M�~�~ 0 row  � m   O P�}�}  � k   T ^�� ��� r   T Y��� n   T W��� 2  U W�|
�| 
citm� o   T U�{�{ 0 row  � o      �z�z 0 columns  � ��y� r   Z ^��� o   Z [�x�x 0 columns  � n      ���  ;   \ ]� o   [ \�w�w 0 csvdata csvData�y  ��  ��  �� 0 row  � o   ? @�v�v 0 rows  � ��� l  h h�u�t�s�u  �t  �s  � ��� r   h m��� o   h i�r�r 0 olddelimiters oldDelimiters� n     ��� 1   j l�q
�q 
txdl� 1   i j�p
�p 
ascr� ��o� L   n p�� o   n o�n�n 0 csvdata csvData�o  � R      �m��l
�m .ascrerr ****      � ****� o      �k�k 0 err  �l  � k   x ��� ��� I  x �j��i
�j .ascrcmnt****      � ****� b   x {��� m   x y�� ��� ( F a i l e d   t o   r e a d   c s v :  � o   y z�h�h 0 err  �i  � ��g� L   � ��� J   � ��f�f  �g  ��  � ��� l     �e�d�c�e  �d  �c  � � � l     �b�a�`�b  �a  �`     i     I      �_�^�_ 0 	getcolumn 	getColumn  o      �]�] 0 	twodarray 	twoDArray �\ o      �[�[ 0 columnindex columnIndex�\  �^   k     5		 

 r      J     �Z�Z   o      �Y�Y 0 
columndata 
columnData  X    2�X Z    -�W @     l   �V�U I   �T�S
�T .corecnte****       **** o    �R�R 0 row  �S  �V  �U   o    �Q�Q 0 columnindex columnIndex r    & n    # 4     #�P
�P 
cobj o   ! "�O�O 0 columnindex columnIndex o     �N�N 0 row   n        ;   $ % o   # $�M�M 0 
columndata 
columnData�W   r   ) - !  m   ) *�L
�L 
msng! n      "#"  ;   + ,# o   * +�K�K 0 
columndata 
columnData�X 0 row   o    	�J�J 0 	twodarray 	twoDArray $�I$ L   3 5%% o   3 4�H�H 0 
columndata 
columnData�I   &'& l     �G�F�E�G  �F  �E  ' ()( l     �D�C�B�D  �C  �B  ) *+* i     #,-, I      �A.�@�A *0 gettrackinfofrompid getTrackInfoFromPID. /�?/ o      �>�> 0 persistentid persistentID�?  �@  - k     )00 121 O     "343 k    !55 676 r    898 6   :;: n    
<=< 3    
�=
�= 
cTrk= 4    �<>
�< 
cLiP> m    �;�; ; =   ?@? 1    �:
�: 
pPIS@ o    �9�9 0 persistentid persistentID9 o      �8�8 0 thetrack theTrack7 ABA r    CDC l   E�7�6E n    FGF 1    �5
�5 
pnamG o    �4�4 0 thetrack theTrack�7  �6  D o      �3�3 0 
tracktitle 
trackTitleB H�2H r    !IJI l   K�1�0K n    LML 1    �/
�/ 
pArtM o    �.�. 0 thetrack theTrack�1  �0  J o      �-�- 0 trackartist trackArtist�2  4 m     NN�                                                                                      @ alis    ,  Macintosh HD               �<�*BD ����	Music.app                                                      �����<�*        ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��  2 O�,O L   # )PP b   # (QRQ b   # &STS o   # $�+�+ 0 trackartist trackArtistT m   $ %UU �VV    -  R o   & '�*�* 0 
tracktitle 
trackTitle�,  + WXW l     �)�(�'�)  �(  �'  X YZY l     �&�%�$�&  �%  �$  Z [\[ l     �#]^�#  ] � �set resultData to readChartDataFromCsv(POSIX file "/Users/charliec/Library/CloudStorage/OneDrive-Personal/CharlieCares/charrrboard/Charrrboard.csv")   ^ �__( s e t   r e s u l t D a t a   t o   r e a d C h a r t D a t a F r o m C s v ( P O S I X   f i l e   " / U s e r s / c h a r l i e c / L i b r a r y / C l o u d S t o r a g e / O n e D r i v e - P e r s o n a l / C h a r l i e C a r e s / c h a r r r b o a r d / C h a r r r b o a r d . c s v " )\ `a` l     �"bc�"  b * $set pids to getColumn(resultData, 1)   c �dd H s e t   p i d s   t o   g e t C o l u m n ( r e s u l t D a t a ,   1 )a efe l     �!� ��!  �   �  f ghg l     �ij�  i � �savePlaylistTrackInfoToTxt("Charrrboard 2025.05.23", POSIX file "/Users/charliec/Library/CloudStorage/OneDrive-Personal/CharlieCares/charrrboard/newBoard.txt")   j �kk> s a v e P l a y l i s t T r a c k I n f o T o T x t ( " C h a r r r b o a r d   2 0 2 5 . 0 5 . 2 3 " ,   P O S I X   f i l e   " / U s e r s / c h a r l i e c / L i b r a r y / C l o u d S t o r a g e / O n e D r i v e - P e r s o n a l / C h a r l i e C a r e s / c h a r r r b o a r d / n e w B o a r d . t x t " )h lml l     �no�  n � �saveTrackInfoToTxt(pids, "/Users/charliec/Library/CloudStorage/OneDrive-Personal/CharlieCares/charrrboard/Charrrboard_TrackInfo.txt")   o �pp
 s a v e T r a c k I n f o T o T x t ( p i d s ,   " / U s e r s / c h a r l i e c / L i b r a r y / C l o u d S t o r a g e / O n e D r i v e - P e r s o n a l / C h a r l i e C a r e s / c h a r r r b o a r d / C h a r r r b o a r d _ T r a c k I n f o . t x t " )m qrq l     ����  �  �  r sts l     ����  �  �  t u�u l     ����  �  �  �  f �vwxyz{|}~�  v 	��������
�	� B0 exportplaylistplaycountsinbatch exportPlaylistPlayCountsInBatch� ,0 saveplaycounttobatch savePlayCountToBatch� *0 saveplaycountstocsv savePlayCountsToCsv� <0 createplaylistbypersistentid createPlaylistByPersistentID� 20 saveplaylisttrackstotxt savePlaylistTracksToTxt� (0 savetrackinfototxt saveTrackInfoToTxt� ,0 readchartdatafromcsv readChartDataFromCsv�
 0 	getcolumn 	getColumn�	 *0 gettrackinfofrompid getTrackInfoFromPIDw �r������ B0 exportplaylistplaycountsinbatch exportPlaylistPlayCountsInBatch� ��� �  ����  0 targetplaylist targetPlaylist� 0 	batchsize 	batchSize� 0 savefiledir saveFileDir�  � 	� �����������������   0 targetplaylist targetPlaylist�� 0 	batchsize 	batchSize�� 0 savefiledir saveFileDir�� 0 	musicdata 	musicData�� 0 trackcounter trackCounter�� 0 batchcounter batchCounter��  0 playlisttracks playlistTracks�� 0 atrack aTrack�� 0 	trackinfo 	trackInfo� 	�����������������
�� 
cPly
�� 
cTrk
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pPIS
�� 
pPlC�� ,0 saveplaycounttobatch savePlayCountToBatch� ojvE�OkE�OkE�O� ^*�/�-E�O I�[��l kh ��,��,lvE�O��6GO��#j  )���m+ OjvE�O�kE�Y hO�kE�[OY��O)���m+ Ux ������������� ,0 saveplaycounttobatch savePlayCountToBatch�� ����� �  �������� 0 	musicdata 	musicData�� 0 savefiledir saveFileDir�� 0 batchcounter batchCounter��  � ���������� 0 	musicdata 	musicData�� 0 savefiledir saveFileDir�� 0 batchcounter batchCounter�� 0 savepath savePath� 	����
����
�� .corecnte****       ****
�� .ascrcmnt****      � ****�� *0 saveplaycountstocsv savePlayCountsToCsv�� (��%�%�%E�O�j %�%�%�%�%�%j O)��l+ y ������������ *0 saveplaycountstocsv savePlayCountsToCsv�� ����� �  ������ 0 playcountdata playCountData�� 0 savefilepath saveFilePath��  � �������������� 0 playcountdata playCountData�� 0 savefilepath saveFilePath�� 0 
csvcontent 
csvContent�� 0 itemdata itemData�� 0 fileref fileRef�� 0 errmsg errMsg� &��������:����������������������c������px��
�� 
ret 
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
psxf
�� 
perm
�� .rdwropenshor       file
�� 
set2
�� .rdwrseofnull���     ****
�� 
refn
�� 
as  
�� 
utf8�� 
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****�� 0 errmsg errMsg��  ��  
�� .ascrcmnt****      � ****�� ���%E�O %�[��l kh ���k/%�%��l/%�%E�[OY��O 0*�/�el E�O��jl 
O����� O�j Oa �%W !X   
�j W X  hO)ja �%Oa �%j z ������������� <0 createplaylistbypersistentid createPlaylistByPersistentID�� ����� �  ������ 0 persistentids persistentIDs�� 0 playlistname playlistName��  � ���������������� 0 persistentids persistentIDs�� 0 playlistname playlistName�� 0 newplaylist newPlaylist�� 0 successcount successCount�� 0 persistentid persistentID�� 0 foundtracks foundTracks�� 0 errmsg errMsg� ��������������������������������������
�� 
kocl
�� 
cUsP
�� 
prdt
�� 
pnam�� 
�� .corecrel****      � null
�� 
cobj
�� .corecnte****       ****
�� 
cTrk�  
�� 
pPIS
�� 
insh
�� .coreclon****      � ****�� 0 errmsg errMsg��  
�� .ascrcmnt****      � ****�� �� �*����l� E�OjE�O [�[��l kh  2*�-�[�,\Z�81E�O�j j ��k/�l O�kE�Y hW X  a �%a %�%j [OY��Oa �%a %�%a %�j %a %U{ ������������ 20 saveplaylisttrackstotxt savePlaylistTracksToTxt�� ����� �  ������ 0 playlistname playlistName�� 0 savefilepath saveFilePath��  � ������������ 0 playlistname playlistName�� 0 savefilepath saveFilePath�� 0 
txtcontent 
txtContent��  0 targetplaylist targetPlaylist�� 0 atrack aTrack� H������������0����@��D��
�� 
cPly
�� 
cTrk
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pArt
�� 
pnam
�� 
ret 
�� 
strq
�� .sysoexecTEXT���     TEXT�� G� C�E�O*�/E�O %��-[��l kh ���,%�%��,%�%E�[OY��O��,%�%��,%j U| ��P���������� (0 savetrackinfototxt saveTrackInfoToTxt�� ����� �  ������ 0 persistentids persistentIDs�� 0 savefilepath saveFilePath��  � ������������ 0 persistentids persistentIDs�� 0 savefilepath saveFilePath�� 0 
txtcontent 
txtContent�� 0 pid  �� 0 atrack aTrack� �\������~�}��|�{~�z�y��x��w
�� 
kocl
�� 
cobj
� .corecnte****       ****
�~ 
cLiP
�} 
cTrk
�| 
pPIS
�{ 
pArt
�z 
pnam
�y 
ret 
�x 
strq
�w .sysoexecTEXT���     TEXT�� P� L�E�O 5�[��l kh *�k/�.�[�,\Z�81E�O���,%�%��,%�%E�[OY��O���,%�%��,%j U} �v��u�t���s�v ,0 readchartdatafromcsv readChartDataFromCsv�u �r��r �  �q�q 0 filepath filePath�t  � 	�p�o�n�m�l�k�j�i�h�p 0 filepath filePath�o 0 csvdata csvData�n 0 fileref fileRef�m 0 csvtext csvText�l 0 olddelimiters oldDelimiters�k 0 rows  �j 0 row  �i 0 columns  �h 0 err  � �g�f�e�d�c��b�a�`�_�^�]�\�[��Z
�g .rdwropenshor       file
�f .rdwrread****        ****
�e .rdwrclosnull���     ****
�d 
ascr
�c 
txdl
�b 
cobj
�a 
cpar
�` 
kocl
�_ .corecnte****       ****
�^ 
leng
�] 
citm�\ 0 err  �[  
�Z .ascrcmnt****      � ****�s �jvE�O m�j  E�O�j E�O�j O��,�lvE[�k/E�Z[�l/��,FZO��-E�O *�[��l 	kh ��,j ��-E�O��6FY h[OY��O���,FO�W X  �%j Ojv~ �Y�X�W���V�Y 0 	getcolumn 	getColumn�X �U��U �  �T�S�T 0 	twodarray 	twoDArray�S 0 columnindex columnIndex�W  � �R�Q�P�O�R 0 	twodarray 	twoDArray�Q 0 columnindex columnIndex�P 0 
columndata 
columnData�O 0 row  � �N�M�L�K
�N 
kocl
�M 
cobj
�L .corecnte****       ****
�K 
msng�V 6jvE�O ,�[��l kh �j � ��/�6FY �6F[OY��O� �J-�I�H���G�J *0 gettrackinfofrompid getTrackInfoFromPID�I �F��F �  �E�E 0 persistentid persistentID�H  � �D�C�B�A�D 0 persistentid persistentID�C 0 thetrack theTrack�B 0 
tracktitle 
trackTitle�A 0 trackartist trackArtist� N�@�?��>�=�<U
�@ 
cLiP
�? 
cTrk
�> 
pPIS
�= 
pnam
�< 
pArt�G *� *�k/�.�[�,\Z�81E�O��,E�O��,E�UO��%�%G ���  2 0 2 5 . 0 7 . 0 5�Q  �P �O  H ���  2 0 2 5 . 0 6 . 0 5I ��� � / U s e r s / c h a r l i e c / m y D e v / A p p l e S c r i p t s / A p p l e M u s i c W e e k l y C h a r t / W o r k i n g F o l d e r / C h a r t _ 2 0 2 5 . 0 7 . 0 5 _ 2 0 2 5 . 0 6 . 0 5 . c s vJ �;��; �  ��:�9�8�7�6�5�4�3�2�1�0�/�.�-�,� �+��+ �  N�*�)�(�'�&�%�$�#�"�!� ����N ���  F 3�*  �)  �(  �'  �&  �%  �$  �#  �"  �!  �   �  �  �  �  �:  �9  �8  �7  �6  �5  �4  �3  �2  �1  �0  �/  �.  �-  �,  K ��� �  N����������������  �  �  �  �  �  �  �  �  �  �  �  �  �  �  L ��� �  �
�	��������� ����������
�
 
msng�	  �  �  �  �  �  �  �  �  �   ��  ��  ��  ��  ��  M ������  ��  �N �M  �L  �K  �J  �I  �H  �G  �F  �E  �D  �C  �B  �A  �@   ascr  ��ޭ