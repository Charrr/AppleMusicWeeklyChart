FasdUAS 1.101.10   ��   ��    k             l      ��  ��   IC
on exportAllPlayCounts()	set targetPlaylist to "_ALL_"	set musicData to {}	set progressCounter to 0		tell application "Music"		set playlistTracks to tracks of playlist targetPlaylist		repeat with aTrack in playlistTracks			set progressCounter to progressCounter + 1			if (progressCounter mod 100 = 0) then				log (progressCounter as text) & "/" & ((count of playlistTracks) as text)			end if			set trackInfo to {persistent ID of aTrack, played count of aTrack}			copy trackInfo to end of musicData		end repeat	end tell		return musicDataend exportAllPlayCounts     � 	 	� 
 o n   e x p o r t A l l P l a y C o u n t s ( )  	 s e t   t a r g e t P l a y l i s t   t o   " _ A L L _ "  	 s e t   m u s i c D a t a   t o   { }  	 s e t   p r o g r e s s C o u n t e r   t o   0  	  	 t e l l   a p p l i c a t i o n   " M u s i c "  	 	 s e t   p l a y l i s t T r a c k s   t o   t r a c k s   o f   p l a y l i s t   t a r g e t P l a y l i s t  	 	 r e p e a t   w i t h   a T r a c k   i n   p l a y l i s t T r a c k s  	 	 	 s e t   p r o g r e s s C o u n t e r   t o   p r o g r e s s C o u n t e r   +   1  	 	 	 i f   ( p r o g r e s s C o u n t e r   m o d   1 0 0   =   0 )   t h e n  	 	 	 	 l o g   ( p r o g r e s s C o u n t e r   a s   t e x t )   &   " / "   &   ( ( c o u n t   o f   p l a y l i s t T r a c k s )   a s   t e x t )  	 	 	 e n d   i f  	 	 	 s e t   t r a c k I n f o   t o   { p e r s i s t e n t   I D   o f   a T r a c k ,   p l a y e d   c o u n t   o f   a T r a c k }  	 	 	 c o p y   t r a c k I n f o   t o   e n d   o f   m u s i c D a t a  	 	 e n d   r e p e a t  	 e n d   t e l l  	  	 r e t u r n   m u s i c D a t a  e n d   e x p o r t A l l P l a y C o u n t s    
  
 l     ��������  ��  ��        i         I      �� ���� B0 exportplaylistplaycountsinbatch exportPlaylistPlayCountsInBatch      o      ����  0 targetplaylist targetPlaylist      o      ���� 0 	batchsize 	batchSize   ��  o      ���� 0 savefiledir saveFileDir��  ��    k     n       r         J     ����    o      ���� 0 	musicdata 	musicData      r        m    ����   o      ���� 0 trackcounter trackCounter       r   	  ! " ! m   	 
����  " o      ���� 0 batchcounter batchCounter    # $ # l   ��������  ��  ��   $  %�� % O    n & ' & k    m ( (  ) * ) r     + , + n     - . - 2   ��
�� 
cTrk . 4    �� /
�� 
cPly / o    ����  0 targetplaylist targetPlaylist , o      ����  0 playlisttracks playlistTracks *  0 1 0 X    d 2�� 3 2 k   * _ 4 4  5 6 5 r   * 4 7 8 7 J   * 2 9 9  : ; : n   * - < = < 1   + -��
�� 
pPIS = o   * +���� 0 atrack aTrack ;  >�� > n   - 0 ? @ ? 1   . 0��
�� 
pPlC @ o   - .���� 0 atrack aTrack��   8 o      ���� 0 	trackinfo 	trackInfo 6  A B A s   5 9 C D C o   5 6���� 0 	trackinfo 	trackInfo D n       E F E  ;   7 8 F o   6 7���� 0 	musicdata 	musicData B  G H G Z   : Y I J���� I l  : ? K���� K =   : ? L M L `   : = N O N o   : ;���� 0 trackcounter trackCounter O o   ; <���� 0 	batchsize 	batchSize M m   = >����  ��  ��   J k   B U P P  Q R Q n  B J S T S I   C J�� U���� ,0 saveplaycounttobatch savePlayCountToBatch U  V W V o   C D���� 0 	musicdata 	musicData W  X Y X o   D E���� 0 savefiledir saveFileDir Y  Z�� Z o   E F���� 0 batchcounter batchCounter��  ��   T  f   B C R  [ \ [ r   K O ] ^ ] J   K M����   ^ o      ���� 0 	musicdata 	musicData \  _�� _ r   P U ` a ` [   P S b c b o   P Q���� 0 batchcounter batchCounter c m   Q R����  a o      ���� 0 batchcounter batchCounter��  ��  ��   H  d�� d r   Z _ e f e [   Z ] g h g o   Z [���� 0 trackcounter trackCounter h m   [ \����  f o      ���� 0 trackcounter trackCounter��  �� 0 atrack aTrack 3 o    ����  0 playlisttracks playlistTracks 1  i�� i n  e m j k j I   f m�� l���� ,0 saveplaycounttobatch savePlayCountToBatch l  m n m o   f g���� 0 	musicdata 	musicData n  o p o o   g h���� 0 savefiledir saveFileDir p  q�� q o   h i���� 0 batchcounter batchCounter��  ��   k  f   e f��   ' m     r r�                                                                                      @ alis    ,  Macintosh HD               �<�*BD ����	Music.app                                                      �����<�*        ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��  ��     s t s l     ��������  ��  ��   t  u v u l     ��������  ��  ��   v  w x w i     y z y I      �� {���� ,0 saveplaycounttobatch savePlayCountToBatch {  | } | o      ���� 0 	musicdata 	musicData }  ~  ~ o      ���� 0 savefiledir saveFileDir   ��� � o      ���� 0 batchcounter batchCounter��  ��   z k     ' � �  � � � r     	 � � � b      � � � b      � � � b      � � � o     ���� 0 savefiledir saveFileDir � m     � � � � �  / e x p o r t _ � o    ���� 0 batchcounter batchCounter � m     � � � � �  . c s v � o      ���� 0 savepath savePath �  � � � I  
 �� ���
�� .ascrcmnt****      � **** � b   
  � � � b   
  � � � b   
  � � � b   
  � � � b   
  � � � b   
  � � � m   
  � � � � �  S a v i n g   � l    ����� � I   �� ���
�� .corecnte****       **** � o    ���� 0 	musicdata 	musicData��  ��  ��   � m     � � � � � ,   t r a c k   d a t a   b a t c h   N o .   � o    ���� 0 batchcounter batchCounter � m     � � � � �    t o   � o    ���� 0 savepath savePath � m     � � � � �  .��   �  ��� � n    ' � � � I   ! '�� ����� *0 saveplaycountstocsv savePlayCountsToCsv �  � � � o   ! "���� 0 	musicdata 	musicData �  ��� � o   " #���� 0 savepath savePath��  ��   �  f     !��   x  � � � l     ��������  ��  ��   �  � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� *0 saveplaycountstocsv savePlayCountsToCsv �  � � � o      ���� 0 playcountdata playCountData �  ��� � o      ���� 0 savefilepath saveFilePath��  ��   � k     � � �  � � � r      � � � b      � � � m      � � � � �  I D , P l a y e d   C o u n t � o    ��
�� 
ret  � o      ���� 0 
csvcontent 
csvContent �  � � � X    , ��� � � r    ' � � � b    % � � � b    # � � � b     � � � b     � � � o    ���� 0 
csvcontent 
csvContent � l    ����� � n     � � � 4    �� �
�� 
cobj � m    ����  � o    ���� 0 itemdata itemData��  ��   � m     � � � � �  , � l   " ����� � n    " � � � 4    "�� �
�� 
cobj � m     !����  � o    ���� 0 itemdata itemData��  ��   � o   # $��
�� 
ret  � o      ���� 0 
csvcontent 
csvContent�� 0 itemdata itemData � o   	 
���� 0 playcountdata playCountData �  � � � l  - -��������  ��  ��   �  � � � Q   - } � � � � k   0 [ � �  � � � r   0 < � � � I  0 :�� � �
�� .rdwropenshor       file � 4   0 4�� �
�� 
psxf � o   2 3�� 0 savefilepath saveFilePath � �~ ��}
�~ 
perm � m   5 6�|
�| boovtrue�}   � o      �{�{ 0 fileref fileRef �  � � � I  = D�z � �
�z .rdwrseofnull���     **** � o   = >�y�y 0 fileref fileRef � �x ��w
�x 
set2 � m   ? @�v�v  �w   �  � � � I  E N�u � �
�u .rdwrwritnull���     **** � o   E F�t�t 0 
csvcontent 
csvContent � �s � �
�s 
refn � o   G H�r�r 0 fileref fileRef � �q ��p
�q 
as   � m   I J�o
�o 
utf8�p   �  � � � I  O T�n ��m
�n .rdwrclosnull���     **** � o   O P�l�l 0 fileref fileRef�m   �  ��k � L   U [ � � b   U Z � � � m   U X   � * C S V   f i l e   c r e a t e d   a t :   � o   X Y�j�j 0 savefilepath saveFilePath�k   � R      �i�h
�i .ascrerr ****      � **** o      �g�g 0 errmsg errMsg�h   � k   c }  Q   c t�f I  f k�e�d
�e .rdwrclosnull���     **** o   f g�c�c 0 fileref fileRef�d   R      �b�a�`
�b .ascrerr ****      � ****�a  �`  �f   	�_	 R   u }�^
�]
�^ .ascrerr ****      � ****
 b   w | m   w z � , F a i l e d   t o   w r i t e   f i l e :   o   z {�\�\ 0 errmsg errMsg�]  �_   �  l  ~ ~�[�Z�Y�[  �Z  �Y   �X I  ~ ��W�V
�W .ascrcmnt****      � **** b   ~ � m   ~ � � * C S V   f i l e   c r e a t e d   a t :   o   � ��U�U 0 savefilepath saveFilePath�V  �X   �  l     �T�S�R�T  �S  �R    l      �Q�Q  3-on batchSavePlayCountsToCsvs(playCountData, batchNumber, saveFileDir)	set batchData to recursiveSplit(playCountData, batchNumber, {})	repeat with batch in batchData		log (count of batch)	end repeatend batchSavePlayCountsToCsvson recursiveSplit(sourceList, chunkSize, accumulator)	if (count of sourceList) � chunkSize then		return accumulator & {sourceList}	else		set newAcc to accumulator & {items 1 thru chunkSize of sourceList}		return recursiveSplit(items (chunkSize + 1) thru -1 of sourceList, chunkSize, newAcc)	end ifend recursiveSplit    �Z  o n   b a t c h S a v e P l a y C o u n t s T o C s v s ( p l a y C o u n t D a t a ,   b a t c h N u m b e r ,   s a v e F i l e D i r )  	 s e t   b a t c h D a t a   t o   r e c u r s i v e S p l i t ( p l a y C o u n t D a t a ,   b a t c h N u m b e r ,   { } )  	 r e p e a t   w i t h   b a t c h   i n   b a t c h D a t a  	 	 l o g   ( c o u n t   o f   b a t c h )  	 e n d   r e p e a t  e n d   b a t c h S a v e P l a y C o u n t s T o C s v s   o n   r e c u r s i v e S p l i t ( s o u r c e L i s t ,   c h u n k S i z e ,   a c c u m u l a t o r )  	 i f   ( c o u n t   o f   s o u r c e L i s t )  "d   c h u n k S i z e   t h e n  	 	 r e t u r n   a c c u m u l a t o r   &   { s o u r c e L i s t }  	 e l s e  	 	 s e t   n e w A c c   t o   a c c u m u l a t o r   &   { i t e m s   1   t h r u   c h u n k S i z e   o f   s o u r c e L i s t }  	 	 r e t u r n   r e c u r s i v e S p l i t ( i t e m s   ( c h u n k S i z e   +   1 )   t h r u   - 1   o f   s o u r c e L i s t ,   c h u n k S i z e ,   n e w A c c )  	 e n d   i f  e n d   r e c u r s i v e S p l i t   l     �P�O�N�P  �O  �N    !  i    "#" I      �M$�L�M <0 createplaylistbypersistentid createPlaylistByPersistentID$ %&% o      �K�K 0 persistentids persistentIDs& '�J' o      �I�I 0 playlistname playlistName�J  �L  # O     �()( k    �** +,+ l   �H-.�H  -  	 ????????   . �//   R^�zzv}d�e>R�h, 010 r    232 I   �G�F4
�G .corecrel****      � null�F  4 �E56
�E 
kocl5 m    �D
�D 
cUsP6 �C7�B
�C 
prdt7 K    88 �A9�@
�A 
pnam9 o   	 
�?�? 0 playlistname playlistName�@  �B  3 o      �>�> 0 newplaylist newPlaylist1 :;: r    <=< m    �=�=  = o      �<�< 0 successcount successCount; >?> l   �;�:�9�;  �:  �9  ? @A@ l   �8BC�8  B  	 ????ID??   C �DD   �MS�cNE I Dep~�A EFE X    sG�7HG Q   ' nIJKI k   * WLL MNM l  * *�6OP�6  O  	 ??????ID   P �QQ   |�xnS9�McNE I DN RSR r   * 8TUT l  * 6V�5�4V 6  * 6WXW 2   * -�3
�3 
cTrkX =  . 5YZY 1   / 1�2
�2 
pPISZ o   2 4�1�1 0 persistentid persistentID�5  �4  U o      �0�0 0 foundtracks foundTracksS [�/[ Z   9 W\]�.�-\ ?   9 @^_^ l  9 >`�,�+` I  9 >�*a�)
�* .corecnte****       ****a o   9 :�(�( 0 foundtracks foundTracks�)  �,  �+  _ m   > ?�'�'  ] k   C Sbb cdc I  C M�&ef
�& .coreclon****      � ****e l  C Gg�%�$g n   C Ghih 4   D G�#j
�# 
cobjj m   E F�"�" i o   C D�!�! 0 foundtracks foundTracks�%  �$  f � k�
�  
inshk o   H I�� 0 newplaylist newPlaylist�  d l�l r   N Smnm [   N Qopo o   N O�� 0 successcount successCountp m   O P�� n o      �� 0 successcount successCount�  �.  �-  �/  J R      �q�
� .ascrerr ****      � ****q o      �� 0 errmsg errMsg�  K I  _ n�r�
� .ascrcmnt****      � ****r b   _ jsts b   _ huvu b   _ dwxw m   _ byy �zz N F a i l e d   t o   f i n d   t r a c k   w i t h   p e r s i s t e n   I D  x o   b c�� 0 persistentid persistentIDv m   d g{{ �||  .  t o   h i�� 0 errmsg errMsg�  �7 0 persistentid persistentIDH o    �� 0 persistentids persistentIDsF }~} l  t t����  �  �  ~ � L   t ��� b   t ���� b   t ���� b   t ���� b   t ��� b   t }��� b   t y��� m   t w�� ��� < S u c c e s s f u l l y   c r e a t e d   p l a y l i s t  � o   w x�� 0 playlistname playlistName� m   y |�� ���    w i t h  � o   } ~�� 0 successcount successCount� m    ��� ���  /� l  � ����
� I  � ��	��
�	 .corecnte****       ****� o   � ��� 0 persistentids persistentIDs�  �  �
  � m   � ��� ���    t r a c k s .�  ) m     ���                                                                                      @ alis    ,  Macintosh HD               �<�*BD ����	Music.app                                                      �����<�*        ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��  ! ��� l     ����  �  �  � ��� l     ����  �  �  � ��� i    ��� I      � ����  40 gettrackpidsfromplaylist getTrackPIDsFromPlaylist� ���� o      ���� 0 playlistname playlistName��  ��  � O     5��� k    4�� ��� r    
��� 4    ���
�� 
cPly� o    ���� 0 playlistname playlistName� o      ����  0 targetplaylist targetPlaylist� ��� l   ��������  ��  ��  � ��� r    ��� J    ����  � o      ���� 0 
outputlist 
outputList� ��� X    1����� k   " ,�� ��� r   " '��� n   " %��� 1   # %��
�� 
pPIS� o   " #���� 0 atrack aTrack� o      ���� 0 trackid trackId� ���� r   ( ,��� o   ( )���� 0 trackid trackId� n      ���  ;   * +� o   ) *���� 0 
outputlist 
outputList��  �� 0 atrack aTrack� n    ��� 2   ��
�� 
cTrk� o    ����  0 targetplaylist targetPlaylist� ��� l  2 2��������  ��  ��  � ���� L   2 4�� o   2 3���� 0 
outputlist 
outputList��  � m     ���                                                                                      @ alis    ,  Macintosh HD               �<�*BD ����	Music.app                                                      �����<�*        ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 0 savepidstocsv savePIDsToCsv� ��� o      ���� 0 pids  � ���� o      ���� 0 savefilepath saveFilePath��  ��  � k     {�� ��� r     ��� m     �� ���  � o      ���� 0 
csvcontent 
csvContent� ��� X     ����� r    ��� b    ��� b    ��� o    ���� 0 
csvcontent 
csvContent� o    ���� 0 pid  � o    ��
�� 
ret � o      ���� 0 
csvcontent 
csvContent�� 0 pid  � o    ���� 0 pids  � ��� l  ! !��������  ��  ��  � ��� Q   ! q���� k   $ O�� ��� r   $ 0��� I  $ .����
�� .rdwropenshor       file� 4   $ (���
�� 
psxf� o   & '���� 0 savefilepath saveFilePath� �����
�� 
perm� m   ) *��
�� boovtrue��  � o      ���� 0 fileref fileRef� ��� I  1 8����
�� .rdwrseofnull���     ****� o   1 2���� 0 fileref fileRef� �����
�� 
set2� m   3 4����  ��  � ��� I  9 B����
�� .rdwrwritnull���     ****� o   9 :���� 0 
csvcontent 
csvContent� ����
�� 
refn� o   ; <���� 0 fileref fileRef� �����
�� 
as  � m   = >��
�� 
utf8��  �    I  C H����
�� .rdwrclosnull���     **** o   C D���� 0 fileref fileRef��   �� L   I O b   I N m   I L � * C S V   f i l e   c r e a t e d   a t :   o   L M���� 0 savefilepath saveFilePath��  � R      ��	��
�� .ascrerr ****      � ****	 o      ���� 0 errmsg errMsg��  � k   W q

  Q   W h�� I  Z _����
�� .rdwrclosnull���     **** o   Z [���� 0 fileref fileRef��   R      ������
�� .ascrerr ****      � ****��  ��  ��   �� R   i q����
�� .ascrerr ****      � **** b   k p m   k n � , F a i l e d   t o   w r i t e   f i l e :   o   n o���� 0 errmsg errMsg��  ��  �  l  r r��������  ��  ��   �� I  r {����
�� .ascrcmnt****      � **** b   r w m   r u � * C S V   f i l e   c r e a t e d   a t :   o   u v���� 0 savefilepath saveFilePath��  ��  �  l     ��������  ��  ��    !  l     ��������  ��  ��  ! "#" l      ��$%��  $YSon getTrackTitlesFromPlaylist(playlistName)	tell application "Music"		set targetPlaylist to playlist playlistName				set outputList to {}		repeat with aTrack in tracks of targetPlaylist			set trackId to name of aTrack			set end of outputList to trackId		end repeat				return outputList	end tellend getTrackTitlesFromPlaylist   % �&&�  o n   g e t T r a c k T i t l e s F r o m P l a y l i s t ( p l a y l i s t N a m e )  	 t e l l   a p p l i c a t i o n   " M u s i c "  	 	 s e t   t a r g e t P l a y l i s t   t o   p l a y l i s t   p l a y l i s t N a m e  	 	  	 	 s e t   o u t p u t L i s t   t o   { }  	 	 r e p e a t   w i t h   a T r a c k   i n   t r a c k s   o f   t a r g e t P l a y l i s t  	 	 	 s e t   t r a c k I d   t o   n a m e   o f   a T r a c k  	 	 	 s e t   e n d   o f   o u t p u t L i s t   t o   t r a c k I d  	 	 e n d   r e p e a t  	 	  	 	 r e t u r n   o u t p u t L i s t  	 e n d   t e l l  e n d   g e t T r a c k T i t l e s F r o m P l a y l i s t  # '(' l     ��������  ��  ��  ( )*) l     ��������  ��  ��  * +,+ i    -.- I      ��/���� 20 saveplaylisttrackstotxt savePlaylistTracksToTxt/ 010 o      ���� 0 playlistname playlistName1 2��2 o      ���� 0 savefilepath saveFilePath��  ��  . O     F343 k    E55 676 r    898 m    :: �;;  9 o      ���� 0 
txtcontent 
txtContent7 <=< l   ��������  ��  ��  = >?> r    @A@ 4    ��B
�� 
cPlyB o   
 ���� 0 playlistname playlistNameA o      ����  0 targetplaylist targetPlaylist? CDC X    5E��FE r   ! 0GHG b   ! .IJI b   ! ,KLK b   ! (MNM b   ! &OPO o   ! "���� 0 
txtcontent 
txtContentP n   " %QRQ 1   # %��
�� 
pArtR o   " #���� 0 atrack aTrackN m   & 'SS �TT    -  L n   ( +UVU 1   ) +��
�� 
pnamV o   ( )���� 0 atrack aTrackJ o   , -��
�� 
ret H o      ���� 0 
txtcontent 
txtContent�� 0 atrack aTrackF n    WXW 2   ��
�� 
cTrkX o    ����  0 targetplaylist targetPlaylistD YZY l  6 6�������  ��  �  Z [�~[ I  6 E�}\�|
�} .sysoexecTEXT���     TEXT\ b   6 A]^] b   6 =_`_ b   6 ;aba m   6 7cc �dd 
 e c h o  b n   7 :efe 1   8 :�{
�{ 
strqf o   7 8�z�z 0 
txtcontent 
txtContent` m   ; <gg �hh :   |   i c o n v   - f   U T F - 8   - t   U T F - 8   >  ^ n   = @iji 1   > @�y
�y 
strqj o   = >�x�x 0 savefilepath saveFilePath�|  �~  4 m     kk�                                                                                      @ alis    ,  Macintosh HD               �<�*BD ����	Music.app                                                      �����<�*        ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��  , lml l     �w�v�u�w  �v  �u  m non l     �t�s�r�t  �s  �r  o pqp i    rsr I      �qt�p�q (0 savetrackinfototxt saveTrackInfoToTxtt uvu o      �o�o 0 persistentids persistentIDsv w�nw o      �m�m 0 savefilepath saveFilePath�n  �p  s O     Oxyx k    Nzz {|{ r    }~} m     ���  ~ o      �l�l 0 
txtcontent 
txtContent| ��� l   �k�j�i�k  �j  �i  � ��� X    >��h�� k    9�� ��� r    )��� l   '��g�f� 6   '��� n    ��� 3    �e
�e 
cTrk� 4    �d�
�d 
cLiP� m    �c�c � =   &��� 1     "�b
�b 
pPIS� o   # %�a�a 0 pid  �g  �f  � o      �`�` 0 atrack aTrack� ��_� r   * 9��� b   * 7��� b   * 5��� b   * 1��� b   * /��� o   * +�^�^ 0 
txtcontent 
txtContent� n   + .��� 1   , .�]
�] 
pArt� o   + ,�\�\ 0 atrack aTrack� m   / 0�� ���    -  � n   1 4��� 1   2 4�[
�[ 
pnam� o   1 2�Z�Z 0 atrack aTrack� o   5 6�Y
�Y 
ret � o      �X�X 0 
txtcontent 
txtContent�_  �h 0 pid  � o    �W�W 0 persistentids persistentIDs� ��� l  ? ?�V�U�T�V  �U  �T  � ��S� I  ? N�R��Q
�R .sysoexecTEXT���     TEXT� b   ? J��� b   ? F��� b   ? D��� m   ? @�� ��� 
 e c h o  � n   @ C��� 1   A C�P
�P 
strq� o   @ A�O�O 0 
txtcontent 
txtContent� m   D E�� ��� :   |   i c o n v   - f   U T F - 8   - t   U T F - 8   >  � n   F I��� 1   G I�N
�N 
strq� o   F G�M�M 0 savefilepath saveFilePath�Q  �S  y m     ���                                                                                      @ alis    ,  Macintosh HD               �<�*BD ����	Music.app                                                      �����<�*        ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��  q ��� l     �L�K�J�L  �K  �J  � ��� l     �I�H�G�I  �H  �G  � ��� i     #��� I      �F��E�F ,0 readchartdatafromcsv readChartDataFromCsv� ��D� o      �C�C 0 filepath filePath�D  �E  � k     ��� ��� r     ��� J     �B�B  � o      �A�A 0 csvdata csvData� ��@� Q    ����� k    p�� ��� r    ��� I   �?��>
�? .rdwropenshor       file� o    	�=�= 0 filepath filePath�>  � o      �<�< 0 fileref fileRef� ��� r    ��� I   �;��:
�; .rdwrread****        ****� o    �9�9 0 fileref fileRef�:  � o      �8�8 0 csvtext csvText� ��� I   �7��6
�7 .rdwrclosnull���     ****� o    �5�5 0 fileref fileRef�6  � ��� l   �4�3�2�4  �3  �2  � ��� r    5��� J    $�� ��� n   !��� 1    !�1
�1 
txdl� 1    �0
�0 
ascr� ��/� m   ! "�� ���  ,�/  � J      �� ��� o      �.�. 0 olddelimiters oldDelimiters� ��-� n     ��� 1   1 3�,
�, 
txdl� 1   0 1�+
�+ 
ascr�-  � ��� l  6 6�*�)�(�*  �)  �(  � ��� r   6 ;��� n   6 9��� 2  7 9�'
�' 
cpar� o   6 7�&�& 0 csvtext csvText� o      �%�% 0 rows  � ��� X   < g��$�� Z   L b���#�"� ?   L Q��� n   L O��� 1   M O�!
�! 
leng� o   L M� �  0 row  � m   O P��  � k   T ^��    r   T Y n   T W 2  U W�
� 
citm o   T U�� 0 row   o      �� 0 columns   � r   Z ^ o   Z [�� 0 columns   n      	
	  ;   \ ]
 o   [ \�� 0 csvdata csvData�  �#  �"  �$ 0 row  � o   ? @�� 0 rows  �  l  h h����  �  �    r   h m o   h i�� 0 olddelimiters oldDelimiters n      1   j l�
� 
txdl 1   i j�
� 
ascr � L   n p o   n o�� 0 csvdata csvData�  � R      ��
� .ascrerr ****      � **** o      �� 0 err  �  � k   x �  I  x ��
� .ascrcmnt****      � **** b   x { m   x y � ( F a i l e d   t o   r e a d   c s v :   o   y z�
�
 0 err  �   �	 L   � � J   � ���  �	  �@  �  !  l     ����  �  �  ! "#" l     ����  �  �  # $%$ i   $ '&'& I      �(� � 0 	getcolumn 	getColumn( )*) o      ���� 0 	twodarray 	twoDArray* +��+ o      ���� 0 columnindex columnIndex��  �   ' k     5,, -.- r     /0/ J     ����  0 o      ���� 0 
columndata 
columnData. 121 X    23��43 Z    -56��75 @    898 l   :����: I   ��;��
�� .corecnte****       ****; o    ���� 0 row  ��  ��  ��  9 o    ���� 0 columnindex columnIndex6 r    &<=< n    #>?> 4     #��@
�� 
cobj@ o   ! "���� 0 columnindex columnIndex? o     ���� 0 row  = n      ABA  ;   $ %B o   # $���� 0 
columndata 
columnData��  7 r   ) -CDC m   ) *��
�� 
msngD n      EFE  ;   + ,F o   * +���� 0 
columndata 
columnData�� 0 row  4 o    	���� 0 	twodarray 	twoDArray2 G��G L   3 5HH o   3 4���� 0 
columndata 
columnData��  % IJI l     ��������  ��  ��  J KLK l     ��������  ��  ��  L MNM i   ( +OPO I      ��Q���� *0 gettrackinfofrompid getTrackInfoFromPIDQ R��R o      ���� 0 persistentid persistentID��  ��  P k     )SS TUT O     "VWV k    !XX YZY r    [\[ 6   ]^] n    
_`_ 3    
��
�� 
cTrk` 4    ��a
�� 
cLiPa m    ���� ^ =   bcb 1    ��
�� 
pPISc o    ���� 0 persistentid persistentID\ o      ���� 0 thetrack theTrackZ ded r    fgf l   h����h n    iji 1    ��
�� 
pnamj o    ���� 0 thetrack theTrack��  ��  g o      ���� 0 
tracktitle 
trackTitlee k��k r    !lml l   n����n n    opo 1    ��
�� 
pArtp o    ���� 0 thetrack theTrack��  ��  m o      ���� 0 trackartist trackArtist��  W m     qq�                                                                                      @ alis    ,  Macintosh HD               �<�*BD ����	Music.app                                                      �����<�*        ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��  U r��r L   # )ss b   # (tut b   # &vwv o   # $���� 0 trackartist trackArtistw m   $ %xx �yy    -  u o   & '���� 0 
tracktitle 
trackTitle��  N z{z l     ��������  ��  ��  { |}| l     ��������  ��  ��  } ~~ l     ������  � � �set resultData to readChartDataFromCsv(POSIX file "/Users/charliec/Library/CloudStorage/OneDrive-Personal/CharlieCares/charrrboard/Charrrboard.csv")   � ���( s e t   r e s u l t D a t a   t o   r e a d C h a r t D a t a F r o m C s v ( P O S I X   f i l e   " / U s e r s / c h a r l i e c / L i b r a r y / C l o u d S t o r a g e / O n e D r i v e - P e r s o n a l / C h a r l i e C a r e s / c h a r r r b o a r d / C h a r r r b o a r d . c s v " ) ��� l     ������  � * $set pids to getColumn(resultData, 1)   � ��� H s e t   p i d s   t o   g e t C o l u m n ( r e s u l t D a t a ,   1 )� ��� l     ��������  ��  ��  � ��� l     ������  � � �savePlaylistTrackInfoToTxt("Charrrboard 2025.05.23", POSIX file "/Users/charliec/Library/CloudStorage/OneDrive-Personal/CharlieCares/charrrboard/newBoard.txt")   � ���> s a v e P l a y l i s t T r a c k I n f o T o T x t ( " C h a r r r b o a r d   2 0 2 5 . 0 5 . 2 3 " ,   P O S I X   f i l e   " / U s e r s / c h a r l i e c / L i b r a r y / C l o u d S t o r a g e / O n e D r i v e - P e r s o n a l / C h a r l i e C a r e s / c h a r r r b o a r d / n e w B o a r d . t x t " )� ��� l     ������  � � �saveTrackInfoToTxt(pids, "/Users/charliec/Library/CloudStorage/OneDrive-Personal/CharlieCares/charrrboard/Charrrboard_TrackInfo.txt")   � ���
 s a v e T r a c k I n f o T o T x t ( p i d s ,   " / U s e r s / c h a r l i e c / L i b r a r y / C l o u d S t o r a g e / O n e D r i v e - P e r s o n a l / C h a r l i e C a r e s / c h a r r r b o a r d / C h a r r r b o a r d _ T r a c k I n f o . t x t " )� ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ���� l     ��������  ��  ��  ��       ����������������  � ������������������������ B0 exportplaylistplaycountsinbatch exportPlaylistPlayCountsInBatch�� ,0 saveplaycounttobatch savePlayCountToBatch�� *0 saveplaycountstocsv savePlayCountsToCsv�� <0 createplaylistbypersistentid createPlaylistByPersistentID�� 40 gettrackpidsfromplaylist getTrackPIDsFromPlaylist�� 0 savepidstocsv savePIDsToCsv�� 20 saveplaylisttrackstotxt savePlaylistTracksToTxt�� (0 savetrackinfototxt saveTrackInfoToTxt�� ,0 readchartdatafromcsv readChartDataFromCsv�� 0 	getcolumn 	getColumn�� *0 gettrackinfofrompid getTrackInfoFromPID� �� ���������� B0 exportplaylistplaycountsinbatch exportPlaylistPlayCountsInBatch�� ����� �  ��������  0 targetplaylist targetPlaylist�� 0 	batchsize 	batchSize�� 0 savefiledir saveFileDir��  � 	��������������������  0 targetplaylist targetPlaylist�� 0 	batchsize 	batchSize�� 0 savefiledir saveFileDir�� 0 	musicdata 	musicData�� 0 trackcounter trackCounter�� 0 batchcounter batchCounter��  0 playlisttracks playlistTracks�� 0 atrack aTrack�� 0 	trackinfo 	trackInfo� 	 r����������������
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
pPlC�� ,0 saveplaycounttobatch savePlayCountToBatch�� ojvE�OkE�OkE�O� ^*�/�-E�O I�[��l kh ��,��,lvE�O��6GO��#j  )���m+ OjvE�O�kE�Y hO�kE�[OY��O)���m+ U� �� z���������� ,0 saveplaycounttobatch savePlayCountToBatch�� ����� �  �������� 0 	musicdata 	musicData�� 0 savefiledir saveFileDir�� 0 batchcounter batchCounter��  � ���������� 0 	musicdata 	musicData�� 0 savefiledir saveFileDir�� 0 batchcounter batchCounter�� 0 savepath savePath� 	 � � ��� � � �����
�� .corecnte****       ****
�� .ascrcmnt****      � ****�� *0 saveplaycountstocsv savePlayCountsToCsv�� (��%�%�%E�O�j %�%�%�%�%�%j O)��l+ � �� ���~���}�� *0 saveplaycountstocsv savePlayCountsToCsv� �|��| �  �{�z�{ 0 playcountdata playCountData�z 0 savefilepath saveFilePath�~  � �y�x�w�v�u�t�y 0 playcountdata playCountData�x 0 savefilepath saveFilePath�w 0 
csvcontent 
csvContent�v 0 itemdata itemData�u 0 fileref fileRef�t 0 errmsg errMsg�  ��s�r�q�p ��o�n�m�l�k�j�i�h�g�f�e �d�c�b�a
�s 
ret 
�r 
kocl
�q 
cobj
�p .corecnte****       ****
�o 
psxf
�n 
perm
�m .rdwropenshor       file
�l 
set2
�k .rdwrseofnull���     ****
�j 
refn
�i 
as  
�h 
utf8�g 
�f .rdwrwritnull���     ****
�e .rdwrclosnull���     ****�d 0 errmsg errMsg�c  �b  
�a .ascrcmnt****      � ****�} ���%E�O %�[��l kh ���k/%�%��l/%�%E�[OY��O 0*�/�el E�O��jl 
O����� O�j Oa �%W !X   
�j W X  hO)ja �%Oa �%j � �`#�_�^���]�` <0 createplaylistbypersistentid createPlaylistByPersistentID�_ �\��\ �  �[�Z�[ 0 persistentids persistentIDs�Z 0 playlistname playlistName�^  � �Y�X�W�V�U�T�S�Y 0 persistentids persistentIDs�X 0 playlistname playlistName�W 0 newplaylist newPlaylist�V 0 successcount successCount�U 0 persistentid persistentID�T 0 foundtracks foundTracks�S 0 errmsg errMsg� ��R�Q�P�O�N�M�L�K�J��I�H�G�F�Ey{�D����
�R 
kocl
�Q 
cUsP
�P 
prdt
�O 
pnam�N 
�M .corecrel****      � null
�L 
cobj
�K .corecnte****       ****
�J 
cTrk�  
�I 
pPIS
�H 
insh
�G .coreclon****      � ****�F 0 errmsg errMsg�E  
�D .ascrcmnt****      � ****�] �� �*����l� E�OjE�O [�[��l kh  2*�-�[�,\Z�81E�O�j j ��k/�l O�kE�Y hW X  a �%a %�%j [OY��Oa �%a %�%a %�j %a %U� �C��B�A���@�C 40 gettrackpidsfromplaylist getTrackPIDsFromPlaylist�B �?��? �  �>�> 0 playlistname playlistName�A  � �=�<�;�:�9�= 0 playlistname playlistName�<  0 targetplaylist targetPlaylist�; 0 
outputlist 
outputList�: 0 atrack aTrack�9 0 trackid trackId� ��8�7�6�5�4�3
�8 
cPly
�7 
cTrk
�6 
kocl
�5 
cobj
�4 .corecnte****       ****
�3 
pPIS�@ 6� 2*�/E�OjvE�O  ��-[��l kh ��,E�O��6F[OY��O�U� �2��1�0���/�2 0 savepidstocsv savePIDsToCsv�1 �.��. �  �-�,�- 0 pids  �, 0 savefilepath saveFilePath�0  � �+�*�)�(�'�&�+ 0 pids  �* 0 savefilepath saveFilePath�) 0 
csvcontent 
csvContent�( 0 pid  �' 0 fileref fileRef�& 0 errmsg errMsg� ��%�$�#�"�!� �������������
�% 
kocl
�$ 
cobj
�# .corecnte****       ****
�" 
ret 
�! 
psxf
�  
perm
� .rdwropenshor       file
� 
set2
� .rdwrseofnull���     ****
� 
refn
� 
as  
� 
utf8� 
� .rdwrwritnull���     ****
� .rdwrclosnull���     ****� 0 errmsg errMsg�  �  
� .ascrcmnt****      � ****�/ |�E�O �[��l kh ��%�%E�[OY��O 0*�/�el E�O��jl 	O����� O�j Oa �%W !X   
�j W X  hO)ja �%Oa �%j � �.������ 20 saveplaylisttrackstotxt savePlaylistTracksToTxt� ��� �  ��� 0 playlistname playlistName� 0 savefilepath saveFilePath�  � ��
�	��� 0 playlistname playlistName�
 0 savefilepath saveFilePath�	 0 
txtcontent 
txtContent�  0 targetplaylist targetPlaylist� 0 atrack aTrack� k:������S� ��c��g��
� 
cPly
� 
cTrk
� 
kocl
� 
cobj
� .corecnte****       ****
� 
pArt
�  
pnam
�� 
ret 
�� 
strq
�� .sysoexecTEXT���     TEXT� G� C�E�O*�/E�O %��-[��l kh ���,%�%��,%�%E�[OY��O��,%�%��,%j U� ��s���������� (0 savetrackinfototxt saveTrackInfoToTxt�� ����� �  ������ 0 persistentids persistentIDs�� 0 savefilepath saveFilePath��  � ������������ 0 persistentids persistentIDs�� 0 savefilepath saveFilePath�� 0 
txtcontent 
txtContent�� 0 pid  �� 0 atrack aTrack� ���������������������������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
cLiP
�� 
cTrk
�� 
pPIS
�� 
pArt
�� 
pnam
�� 
ret 
�� 
strq
�� .sysoexecTEXT���     TEXT�� P� L�E�O 5�[��l kh *�k/�.�[�,\Z�81E�O���,%�%��,%�%E�[OY��O���,%�%��,%j U� ������������� ,0 readchartdatafromcsv readChartDataFromCsv�� ����� �  ���� 0 filepath filePath��  � 	�������������������� 0 filepath filePath�� 0 csvdata csvData�� 0 fileref fileRef�� 0 csvtext csvText�� 0 olddelimiters oldDelimiters�� 0 rows  �� 0 row  �� 0 columns  �� 0 err  � �����������������������������
�� .rdwropenshor       file
�� .rdwrread****        ****
�� .rdwrclosnull���     ****
�� 
ascr
�� 
txdl
�� 
cobj
�� 
cpar
�� 
kocl
�� .corecnte****       ****
�� 
leng
�� 
citm�� 0 err  ��  
�� .ascrcmnt****      � ****�� �jvE�O m�j  E�O�j E�O�j O��,�lvE[�k/E�Z[�l/��,FZO��-E�O *�[��l 	kh ��,j ��-E�O��6FY h[OY��O���,FO�W X  �%j Ojv� ��'���������� 0 	getcolumn 	getColumn�� ����� �  ������ 0 	twodarray 	twoDArray�� 0 columnindex columnIndex��  � ���������� 0 	twodarray 	twoDArray�� 0 columnindex columnIndex�� 0 
columndata 
columnData�� 0 row  � ��������
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
msng�� 6jvE�O ,�[��l kh �j � ��/�6FY �6F[OY��O�� ��P���������� *0 gettrackinfofrompid getTrackInfoFromPID�� ����� �  ���� 0 persistentid persistentID��  � ���������� 0 persistentid persistentID�� 0 thetrack theTrack�� 0 
tracktitle 
trackTitle�� 0 trackartist trackArtist� q�����������x
�� 
cLiP
�� 
cTrk
�� 
pPIS
�� 
pnam
�� 
pArt�� *� *�k/�.�[�,\Z�81E�O��,E�O��,E�UO��%�%ascr  ��ޭ