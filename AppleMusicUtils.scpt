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
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��  ! ��� l     ����  �  �  � ��� l     ����  �  �  � ��� l      � ���   ���
on getTrackPIDsFromPlaylist(playlistName)	tell application "Music"		set targetPlaylist to playlist playlistName				set outputList to {}		repeat with aTrack in tracks of targetPlaylist			set trackId to persistent ID of aTrack			set end of outputList to trackId		end repeat				return outputList	end tellend getTrackPIDsFromPlaylist


on savePIDsToCsv(pids, saveFilePath)	set csvContent to ""	repeat with pid in pids		set csvContent to csvContent & pid & return	end repeat		try		set fileRef to open for access POSIX file saveFilePath with write permission		set eof fileRef to 0		write csvContent to fileRef as �class utf8�		close access fileRef		return "CSV file created at: " & saveFilePath	on error errMsg		try			close access fileRef		end try		error "Failed to write file: " & errMsg	end try		log "CSV file created at: " & saveFilePathend savePIDsToCsv

on getTrackTitlesFromPlaylist(playlistName)	tell application "Music"		set targetPlaylist to playlist playlistName				set outputList to {}		repeat with aTrack in tracks of targetPlaylist			set trackId to name of aTrack			set end of outputList to trackId		end repeat				return outputList	end tellend getTrackTitlesFromPlaylist   � ���	� 
 o n   g e t T r a c k P I D s F r o m P l a y l i s t ( p l a y l i s t N a m e )  	 t e l l   a p p l i c a t i o n   " M u s i c "  	 	 s e t   t a r g e t P l a y l i s t   t o   p l a y l i s t   p l a y l i s t N a m e  	 	  	 	 s e t   o u t p u t L i s t   t o   { }  	 	 r e p e a t   w i t h   a T r a c k   i n   t r a c k s   o f   t a r g e t P l a y l i s t  	 	 	 s e t   t r a c k I d   t o   p e r s i s t e n t   I D   o f   a T r a c k  	 	 	 s e t   e n d   o f   o u t p u t L i s t   t o   t r a c k I d  	 	 e n d   r e p e a t  	 	  	 	 r e t u r n   o u t p u t L i s t  	 e n d   t e l l  e n d   g e t T r a c k P I D s F r o m P l a y l i s t 
 
 
 o n   s a v e P I D s T o C s v ( p i d s ,   s a v e F i l e P a t h )  	 s e t   c s v C o n t e n t   t o   " "  	 r e p e a t   w i t h   p i d   i n   p i d s  	 	 s e t   c s v C o n t e n t   t o   c s v C o n t e n t   &   p i d   &   r e t u r n  	 e n d   r e p e a t  	  	 t r y  	 	 s e t   f i l e R e f   t o   o p e n   f o r   a c c e s s   P O S I X   f i l e   s a v e F i l e P a t h   w i t h   w r i t e   p e r m i s s i o n  	 	 s e t   e o f   f i l e R e f   t o   0  	 	 w r i t e   c s v C o n t e n t   t o   f i l e R e f   a s   � c l a s s   u t f 8 �  	 	 c l o s e   a c c e s s   f i l e R e f  	 	 r e t u r n   " C S V   f i l e   c r e a t e d   a t :   "   &   s a v e F i l e P a t h  	 o n   e r r o r   e r r M s g  	 	 t r y  	 	 	 c l o s e   a c c e s s   f i l e R e f  	 	 e n d   t r y  	 	 e r r o r   " F a i l e d   t o   w r i t e   f i l e :   "   &   e r r M s g  	 e n d   t r y  	  	 l o g   " C S V   f i l e   c r e a t e d   a t :   "   &   s a v e F i l e P a t h  e n d   s a v e P I D s T o C s v 
 
  o n   g e t T r a c k T i t l e s F r o m P l a y l i s t ( p l a y l i s t N a m e )  	 t e l l   a p p l i c a t i o n   " M u s i c "  	 	 s e t   t a r g e t P l a y l i s t   t o   p l a y l i s t   p l a y l i s t N a m e  	 	  	 	 s e t   o u t p u t L i s t   t o   { }  	 	 r e p e a t   w i t h   a T r a c k   i n   t r a c k s   o f   t a r g e t P l a y l i s t  	 	 	 s e t   t r a c k I d   t o   n a m e   o f   a T r a c k  	 	 	 s e t   e n d   o f   o u t p u t L i s t   t o   t r a c k I d  	 	 e n d   r e p e a t  	 	  	 	 r e t u r n   o u t p u t L i s t  	 e n d   t e l l  e n d   g e t T r a c k T i t l e s F r o m P l a y l i s t � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� 20 saveplaylisttrackstotxt savePlaylistTracksToTxt� ��� o      ���� 0 playlistname playlistName� ���� o      ���� 0 savefilepath saveFilePath��  ��  � O     F��� k    E�� ��� r    ��� m    �� ���  � o      ���� 0 
txtcontent 
txtContent� ��� l   ��������  ��  ��  � ��� r    ��� 4    ���
�� 
cPly� o   
 ���� 0 playlistname playlistName� o      ����  0 targetplaylist targetPlaylist� ��� X    5����� r   ! 0��� b   ! .��� b   ! ,��� b   ! (��� b   ! &��� o   ! "���� 0 
txtcontent 
txtContent� n   " %��� 1   # %��
�� 
pArt� o   " #���� 0 atrack aTrack� m   & '�� ���    -  � n   ( +��� 1   ) +��
�� 
pnam� o   ( )���� 0 atrack aTrack� o   , -��
�� 
ret � o      ���� 0 
txtcontent 
txtContent�� 0 atrack aTrack� n    ��� 2   ��
�� 
cTrk� o    ����  0 targetplaylist targetPlaylist� ��� l  6 6��������  ��  ��  � ���� I  6 E�����
�� .sysoexecTEXT���     TEXT� b   6 A��� b   6 =��� b   6 ;��� m   6 7�� ��� 
 e c h o  � n   7 :��� 1   8 :��
�� 
strq� o   7 8���� 0 
txtcontent 
txtContent� m   ; <�� ��� :   |   i c o n v   - f   U T F - 8   - t   U T F - 8   >  � n   = @��� 1   > @��
�� 
strq� o   = >���� 0 savefilepath saveFilePath��  ��  � m     ���                                                                                      @ alis    ,  Macintosh HD               �<�*BD ����	Music.app                                                      �����<�*        ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��  � ��� l     ��������  ��  ��  � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� (0 savetrackinfototxt saveTrackInfoToTxt� ��� o      ���� 0 persistentids persistentIDs� ���� o      ���� 0 savefilepath saveFilePath��  ��  � O     O��� k    N�� ��� r    ��� m    �� ���  � o      ���� 0 
txtcontent 
txtContent� ��� l   ��������  ��  ��  � ��� X    >��� � k    9  r    ) l   '���� 6   ' n    	
	 3    ��
�� 
cTrk
 4    ��
�� 
cLiP m    ����  =   & 1     "��
�� 
pPIS o   # %���� 0 pid  ��  ��   o      ���� 0 atrack aTrack �� r   * 9 b   * 7 b   * 5 b   * 1 b   * / o   * +���� 0 
txtcontent 
txtContent n   + . 1   , .��
�� 
pArt o   + ,���� 0 atrack aTrack m   / 0 �    -   n   1 4 1   2 4��
�� 
pnam o   1 2���� 0 atrack aTrack o   5 6��
�� 
ret  o      ���� 0 
txtcontent 
txtContent��  �� 0 pid    o    ���� 0 persistentids persistentIDs�   l  ? ?��������  ��  ��    !��! I  ? N��"��
�� .sysoexecTEXT���     TEXT" b   ? J#$# b   ? F%&% b   ? D'(' m   ? @)) �** 
 e c h o  ( n   @ C+,+ 1   A C��
�� 
strq, o   @ A���� 0 
txtcontent 
txtContent& m   D E-- �.. :   |   i c o n v   - f   U T F - 8   - t   U T F - 8   >  $ n   F I/0/ 1   G I��
�� 
strq0 o   F G���� 0 savefilepath saveFilePath��  ��  � m     11�                                                                                      @ alis    ,  Macintosh HD               �<�*BD ����	Music.app                                                      �����<�*        ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��  � 232 l     ��������  ��  ��  3 454 l     ��������  ��  ��  5 676 i    898 I      ��:���� ,0 readchartdatafromcsv readChartDataFromCsv: ;��; o      ���� 0 filepath filePath��  ��  9 k     �<< =>= r     ?@? J     ����  @ o      ���� 0 csvdata csvData> A��A Q    �BCDB k    pEE FGF r    HIH I   ��J��
�� .rdwropenshor       fileJ o    	���� 0 filepath filePath��  I o      ���� 0 fileref fileRefG KLK r    MNM I   ��O��
�� .rdwrread****        ****O o    ���� 0 fileref fileRef��  N o      ���� 0 csvtext csvTextL PQP I   ��R��
�� .rdwrclosnull���     ****R o    ���� 0 fileref fileRef��  Q STS l   ��������  ��  ��  T UVU r    5WXW J    $YY Z[Z n   !\]\ 1    !��
�� 
txdl] 1    ��
�� 
ascr[ ^��^ m   ! "__ �``  ,��  X J      aa bcb o      ���� 0 olddelimiters oldDelimitersc d��d n     efe 1   1 3��
�� 
txdlf 1   0 1��
�� 
ascr��  V ghg l  6 6��������  ��  ��  h iji r   6 ;klk n   6 9mnm 2  7 9��
�� 
cparn o   6 7���� 0 csvtext csvTextl o      ���� 0 rows  j opo X   < gq��rq Z   L bst����s ?   L Quvu n   L Owxw 1   M O��
�� 
lengx o   L M���� 0 row  v m   O P����  t k   T ^yy z{z r   T Y|}| n   T W~~ 2  U W��
�� 
citm o   T U�� 0 row  } o      �~�~ 0 columns  { ��}� r   Z ^��� o   Z [�|�| 0 columns  � n      ���  ;   \ ]� o   [ \�{�{ 0 csvdata csvData�}  ��  ��  �� 0 row  r o   ? @�z�z 0 rows  p ��� l  h h�y�x�w�y  �x  �w  � ��� r   h m��� o   h i�v�v 0 olddelimiters oldDelimiters� n     ��� 1   j l�u
�u 
txdl� 1   i j�t
�t 
ascr� ��s� L   n p�� o   n o�r�r 0 csvdata csvData�s  C R      �q��p
�q .ascrerr ****      � ****� o      �o�o 0 err  �p  D k   x ��� ��� I  x �n��m
�n .ascrcmnt****      � ****� b   x {��� m   x y�� ��� ( F a i l e d   t o   r e a d   c s v :  � o   y z�l�l 0 err  �m  � ��k� L   � ��� J   � ��j�j  �k  ��  7 ��� l     �i�h�g�i  �h  �g  � ��� l     �f�e�d�f  �e  �d  � ��� i    ��� I      �c��b�c 0 	getcolumn 	getColumn� ��� o      �a�a 0 	twodarray 	twoDArray� ��`� o      �_�_ 0 columnindex columnIndex�`  �b  � k     5�� ��� r     ��� J     �^�^  � o      �]�] 0 
columndata 
columnData� ��� X    2��\�� Z    -���[�� @    ��� l   ��Z�Y� I   �X��W
�X .corecnte****       ****� o    �V�V 0 row  �W  �Z  �Y  � o    �U�U 0 columnindex columnIndex� r    &��� n    #��� 4     #�T�
�T 
cobj� o   ! "�S�S 0 columnindex columnIndex� o     �R�R 0 row  � n      ���  ;   $ %� o   # $�Q�Q 0 
columndata 
columnData�[  � r   ) -��� m   ) *�P
�P 
msng� n      ���  ;   + ,� o   * +�O�O 0 
columndata 
columnData�\ 0 row  � o    	�N�N 0 	twodarray 	twoDArray� ��M� L   3 5�� o   3 4�L�L 0 
columndata 
columnData�M  � ��� l     �K�J�I�K  �J  �I  � ��� l     �H�G�F�H  �G  �F  � ��� i     #��� I      �E��D�E *0 gettrackinfofrompid getTrackInfoFromPID� ��C� o      �B�B 0 persistentid persistentID�C  �D  � k     )�� ��� O     "��� k    !�� ��� r    ��� 6   ��� n    
��� 3    
�A
�A 
cTrk� 4    �@�
�@ 
cLiP� m    �?�? � =   ��� 1    �>
�> 
pPIS� o    �=�= 0 persistentid persistentID� o      �<�< 0 thetrack theTrack� ��� r    ��� l   ��;�:� n    ��� 1    �9
�9 
pnam� o    �8�8 0 thetrack theTrack�;  �:  � o      �7�7 0 
tracktitle 
trackTitle� ��6� r    !��� l   ��5�4� n    ��� 1    �3
�3 
pArt� o    �2�2 0 thetrack theTrack�5  �4  � o      �1�1 0 trackartist trackArtist�6  � m     ���                                                                                      @ alis    ,  Macintosh HD               �<�*BD ����	Music.app                                                      �����<�*        ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��  � ��0� L   # )�� b   # (��� b   # &��� o   # $�/�/ 0 trackartist trackArtist� m   $ %�� ���    -  � o   & '�.�. 0 
tracktitle 
trackTitle�0  � ��� l     �-�,�+�-  �,  �+  � ��� l     �*�)�(�*  �)  �(  � ��� l     �'���'  � � �set resultData to readChartDataFromCsv(POSIX file "/Users/charliec/Library/CloudStorage/OneDrive-Personal/CharlieCares/charrrboard/Charrrboard.csv")   � ���( s e t   r e s u l t D a t a   t o   r e a d C h a r t D a t a F r o m C s v ( P O S I X   f i l e   " / U s e r s / c h a r l i e c / L i b r a r y / C l o u d S t o r a g e / O n e D r i v e - P e r s o n a l / C h a r l i e C a r e s / c h a r r r b o a r d / C h a r r r b o a r d . c s v " )� ��� l     �&� �&  � * $set pids to getColumn(resultData, 1)     � H s e t   p i d s   t o   g e t C o l u m n ( r e s u l t D a t a ,   1 )�  l     �%�$�#�%  �$  �#    l     �"�"   � �savePlaylistTrackInfoToTxt("Charrrboard 2025.05.23", POSIX file "/Users/charliec/Library/CloudStorage/OneDrive-Personal/CharlieCares/charrrboard/newBoard.txt")    �> s a v e P l a y l i s t T r a c k I n f o T o T x t ( " C h a r r r b o a r d   2 0 2 5 . 0 5 . 2 3 " ,   P O S I X   f i l e   " / U s e r s / c h a r l i e c / L i b r a r y / C l o u d S t o r a g e / O n e D r i v e - P e r s o n a l / C h a r l i e C a r e s / c h a r r r b o a r d / n e w B o a r d . t x t " ) 	
	 l     �!�!   � �saveTrackInfoToTxt(pids, "/Users/charliec/Library/CloudStorage/OneDrive-Personal/CharlieCares/charrrboard/Charrrboard_TrackInfo.txt")    �
 s a v e T r a c k I n f o T o T x t ( p i d s ,   " / U s e r s / c h a r l i e c / L i b r a r y / C l o u d S t o r a g e / O n e D r i v e - P e r s o n a l / C h a r l i e C a r e s / c h a r r r b o a r d / C h a r r r b o a r d _ T r a c k I n f o . t x t " )
  l     � ���   �  �    l     ����  �  �   � l     ����  �  �  �       ��   	���������� B0 exportplaylistplaycountsinbatch exportPlaylistPlayCountsInBatch� ,0 saveplaycounttobatch savePlayCountToBatch� *0 saveplaycountstocsv savePlayCountsToCsv� <0 createplaylistbypersistentid createPlaylistByPersistentID� 20 saveplaylisttrackstotxt savePlaylistTracksToTxt� (0 savetrackinfototxt saveTrackInfoToTxt� ,0 readchartdatafromcsv readChartDataFromCsv� 0 	getcolumn 	getColumn� *0 gettrackinfofrompid getTrackInfoFromPID � ��
�	� B0 exportplaylistplaycountsinbatch exportPlaylistPlayCountsInBatch� ��   ����  0 targetplaylist targetPlaylist� 0 	batchsize 	batchSize� 0 savefiledir saveFileDir�
   	����� ���������  0 targetplaylist targetPlaylist� 0 	batchsize 	batchSize� 0 savefiledir saveFileDir� 0 	musicdata 	musicData�  0 trackcounter trackCounter�� 0 batchcounter batchCounter��  0 playlisttracks playlistTracks�� 0 atrack aTrack�� 0 	trackinfo 	trackInfo 	 r����������������
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
pPlC�� ,0 saveplaycounttobatch savePlayCountToBatch�	 ojvE�OkE�OkE�O� ^*�/�-E�O I�[��l kh ��,��,lvE�O��6GO��#j  )���m+ OjvE�O�kE�Y hO�kE�[OY��O)���m+ U �� z���� !���� ,0 saveplaycounttobatch savePlayCountToBatch�� ��"�� "  �������� 0 	musicdata 	musicData�� 0 savefiledir saveFileDir�� 0 batchcounter batchCounter��    ���������� 0 	musicdata 	musicData�� 0 savefiledir saveFileDir�� 0 batchcounter batchCounter�� 0 savepath savePath! 	 � � ��� � � �����
�� .corecnte****       ****
�� .ascrcmnt****      � ****�� *0 saveplaycountstocsv savePlayCountsToCsv�� (��%�%�%E�O�j %�%�%�%�%�%j O)��l+  �� �����#$���� *0 saveplaycountstocsv savePlayCountsToCsv�� ��%�� %  ������ 0 playcountdata playCountData�� 0 savefilepath saveFilePath��  # �������������� 0 playcountdata playCountData�� 0 savefilepath saveFilePath�� 0 
csvcontent 
csvContent�� 0 itemdata itemData�� 0 fileref fileRef�� 0 errmsg errMsg$  ��������� ����������������������� ��������
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
�j W X  hO)ja �%Oa �%j  ��#����&'���� <0 createplaylistbypersistentid createPlaylistByPersistentID�� ��(�� (  ������ 0 persistentids persistentIDs�� 0 playlistname playlistName��  & ���������������� 0 persistentids persistentIDs�� 0 playlistname playlistName�� 0 newplaylist newPlaylist�� 0 successcount successCount�� 0 persistentid persistentID�� 0 foundtracks foundTracks�� 0 errmsg errMsg' �������������������)����������y{������
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
cTrk)  
�� 
pPIS
�� 
insh
�� .coreclon****      � ****�� 0 errmsg errMsg��  
�� .ascrcmnt****      � ****�� �� �*����l� E�OjE�O [�[��l kh  2*�-�[�,\Z�81E�O�j j ��k/�l O�kE�Y hW X  a �%a %�%j [OY��Oa �%a %�%a %�j %a %U �������*+���� 20 saveplaylisttrackstotxt savePlaylistTracksToTxt�� ��,�� ,  ������ 0 playlistname playlistName�� 0 savefilepath saveFilePath��  * ������������ 0 playlistname playlistName�� 0 savefilepath saveFilePath�� 0 
txtcontent 
txtContent��  0 targetplaylist targetPlaylist�� 0 atrack aTrack+ �������������������������
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
�� .sysoexecTEXT���     TEXT�� G� C�E�O*�/E�O %��-[��l kh ���,%�%��,%�%E�[OY��O��,%�%��,%j U �������-.���� (0 savetrackinfototxt saveTrackInfoToTxt�� ��/�� /  ������ 0 persistentids persistentIDs�� 0 savefilepath saveFilePath��  - ������������ 0 persistentids persistentIDs�� 0 savefilepath saveFilePath�� 0 
txtcontent 
txtContent�� 0 pid  �� 0 atrack aTrack. 1�����������)����~�})�|-�{
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
� 
pArt
�~ 
pnam
�} 
ret 
�| 
strq
�{ .sysoexecTEXT���     TEXT�� P� L�E�O 5�[��l kh *�k/�.�[�,\Z�81E�O���,%�%��,%�%E�[OY��O���,%�%��,%j U �z9�y�x01�w�z ,0 readchartdatafromcsv readChartDataFromCsv�y �v2�v 2  �u�u 0 filepath filePath�x  0 	�t�s�r�q�p�o�n�m�l�t 0 filepath filePath�s 0 csvdata csvData�r 0 fileref fileRef�q 0 csvtext csvText�p 0 olddelimiters oldDelimiters�o 0 rows  �n 0 row  �m 0 columns  �l 0 err  1 �k�j�i�h�g_�f�e�d�c�b�a�`�_��^
�k .rdwropenshor       file
�j .rdwrread****        ****
�i .rdwrclosnull���     ****
�h 
ascr
�g 
txdl
�f 
cobj
�e 
cpar
�d 
kocl
�c .corecnte****       ****
�b 
leng
�a 
citm�` 0 err  �_  
�^ .ascrcmnt****      � ****�w �jvE�O m�j  E�O�j E�O�j O��,�lvE[�k/E�Z[�l/��,FZO��-E�O *�[��l 	kh ��,j ��-E�O��6FY h[OY��O���,FO�W X  �%j Ojv �]��\�[34�Z�] 0 	getcolumn 	getColumn�\ �Y5�Y 5  �X�W�X 0 	twodarray 	twoDArray�W 0 columnindex columnIndex�[  3 �V�U�T�S�V 0 	twodarray 	twoDArray�U 0 columnindex columnIndex�T 0 
columndata 
columnData�S 0 row  4 �R�Q�P�O
�R 
kocl
�Q 
cobj
�P .corecnte****       ****
�O 
msng�Z 6jvE�O ,�[��l kh �j � ��/�6FY �6F[OY��O� �N��M�L67�K�N *0 gettrackinfofrompid getTrackInfoFromPID�M �J8�J 8  �I�I 0 persistentid persistentID�L  6 �H�G�F�E�H 0 persistentid persistentID�G 0 thetrack theTrack�F 0 
tracktitle 
trackTitle�E 0 trackartist trackArtist7 ��D�C)�B�A�@�
�D 
cLiP
�C 
cTrk
�B 
pPIS
�A 
pnam
�@ 
pArt�K *� *�k/�.�[�,\Z�81E�O��,E�O��,E�UO��%�% ascr  ��ޭ