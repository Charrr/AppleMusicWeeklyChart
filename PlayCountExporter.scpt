FasdUAS 1.101.10   ��   ��    k             l     ��  ��      Constants.     � 	 	    C o n s t a n t s .   
  
 l     ����  r         m        �   p / U s e r s / c h a r l i e c / m y D e v / A p p l e S c r i p t s / A p p l e M u s i c W e e k l y C h a r t  o      ���� 0 libdir libDir��  ��        l    ����  r        m       �   � / U s e r s / c h a r l i e c / m y D e v / A p p l e S c r i p t s / A p p l e M u s i c W e e k l y C h a r t / W o r k i n g F o l d e r  o      ���� $0 workingfolderdir workingFolderDir��  ��        l    ����  r        m    	   �   
 _ A L L _  o      ���� ,0 alltrackplaylistname allTrackPlaylistName��  ��         l     ��������  ��  ��      ! " ! l     �� # $��   #   Initialization.    $ � % %     I n i t i a l i z a t i o n . "  & ' & l    (���� ( r     ) * ) I   �� +��
�� .sysoloadscpt        file + 4    �� ,
�� 
psxf , l    -���� - b     . / . o    ���� 0 libdir libDir / m     0 0 � 1 1 * / A p p l e M u s i c U t i l s . s c p t��  ��  ��   * o      ���� "0 applemusicutils AppleMusicUtils��  ��   '  2 3 2 l     4���� 4 r      5 6 5 I   �� 7��
�� .sysoexecTEXT���     TEXT 7 m     8 8 � 9 9   d a t e   ' + % Y . % m . % d '��   6 o      ���� 	0 today  ��  ��   3  : ; : l     ��������  ��  ��   ;  < = < l     �� > ?��   > G A Batch-export current play counts of all tracks into a csv files.    ? � @ @ �   B a t c h - e x p o r t   c u r r e n t   p l a y   c o u n t s   o f   a l l   t r a c k s   i n t o   a   c s v   f i l e s . =  A B A l  ! ( C���� C r   ! ( D E D b   ! & F G F b   ! $ H I H o   ! "���� $0 workingfolderdir workingFolderDir I m   " # J J � K K  / A l l E x p o r t _ G o   $ %���� 	0 today   E o      ����  0 exportbatchdir exportBatchDir��  ��   B  L M L l  ) 4 N���� N I  ) 4�� O��
�� .sysoexecTEXT���     TEXT O b   ) 0 P Q P m   ) * R R � S S  m k d i r   - p   Q n   * / T U T 1   + /��
�� 
strq U o   * +����  0 exportbatchdir exportBatchDir��  ��  ��   M  V�� V l  5 ? W���� W n  5 ? X Y X I   6 ?�� Z���� B0 exportplaylistplaycountsinbatch exportPlaylistPlayCountsInBatch Z  [ \ [ o   6 7���� ,0 alltrackplaylistname allTrackPlaylistName \  ] ^ ] m   7 :����� ^  _�� _ o   : ;����  0 exportbatchdir exportBatchDir��  ��   Y o   5 6���� "0 applemusicutils AppleMusicUtils��  ��  ��       
�� ` a    b c d����   ` ����������������
�� .aevtoappnull  �   � ****�� 0 libdir libDir�� $0 workingfolderdir workingFolderDir�� ,0 alltrackplaylistname allTrackPlaylistName�� "0 applemusicutils AppleMusicUtils�� 	0 today  ��  0 exportbatchdir exportBatchDir��   a �� e���� f g��
�� .aevtoappnull  �   � **** e k     ? h h  
 i i   j j   k k  & l l  2 m m  A n n  L o o  V����  ��  ��   f   g  �� �� ���� 0���� 8���� J�� R�������� 0 libdir libDir�� $0 workingfolderdir workingFolderDir�� ,0 alltrackplaylistname allTrackPlaylistName
�� 
psxf
�� .sysoloadscpt        file�� "0 applemusicutils AppleMusicUtils
�� .sysoexecTEXT���     TEXT�� 	0 today  ��  0 exportbatchdir exportBatchDir
�� 
strq����� B0 exportplaylistplaycountsinbatch exportPlaylistPlayCountsInBatch�� @�E�O�E�O�E�O*���%/j E�O�j E�O��%�%E�O��a ,%j O��a �m+  b �� p  q��   p k       r r  s t s l      �� u v��   uIC
on exportAllPlayCounts()	set targetPlaylist to "_ALL_"	set musicData to {}	set progressCounter to 0		tell application "Music"		set playlistTracks to tracks of playlist targetPlaylist		repeat with aTrack in playlistTracks			set progressCounter to progressCounter + 1			if (progressCounter mod 100 = 0) then				log (progressCounter as text) & "/" & ((count of playlistTracks) as text)			end if			set trackInfo to {persistent ID of aTrack, played count of aTrack}			copy trackInfo to end of musicData		end repeat	end tell		return musicDataend exportAllPlayCounts    v � w w� 
 o n   e x p o r t A l l P l a y C o u n t s ( )  	 s e t   t a r g e t P l a y l i s t   t o   " _ A L L _ "  	 s e t   m u s i c D a t a   t o   { }  	 s e t   p r o g r e s s C o u n t e r   t o   0  	  	 t e l l   a p p l i c a t i o n   " M u s i c "  	 	 s e t   p l a y l i s t T r a c k s   t o   t r a c k s   o f   p l a y l i s t   t a r g e t P l a y l i s t  	 	 r e p e a t   w i t h   a T r a c k   i n   p l a y l i s t T r a c k s  	 	 	 s e t   p r o g r e s s C o u n t e r   t o   p r o g r e s s C o u n t e r   +   1  	 	 	 i f   ( p r o g r e s s C o u n t e r   m o d   1 0 0   =   0 )   t h e n  	 	 	 	 l o g   ( p r o g r e s s C o u n t e r   a s   t e x t )   &   " / "   &   ( ( c o u n t   o f   p l a y l i s t T r a c k s )   a s   t e x t )  	 	 	 e n d   i f  	 	 	 s e t   t r a c k I n f o   t o   { p e r s i s t e n t   I D   o f   a T r a c k ,   p l a y e d   c o u n t   o f   a T r a c k }  	 	 	 c o p y   t r a c k I n f o   t o   e n d   o f   m u s i c D a t a  	 	 e n d   r e p e a t  	 e n d   t e l l  	  	 r e t u r n   m u s i c D a t a  e n d   e x p o r t A l l P l a y C o u n t s  t  x y x l     ��������  ��  ��   y  z { z i      | } | I      �� ~���� B0 exportplaylistplaycountsinbatch exportPlaylistPlayCountsInBatch ~   �  o      ����  0 targetplaylist targetPlaylist �  � � � o      ���� 0 	batchsize 	batchSize �  ��� � o      ���� 0 savefiledir saveFileDir��  ��   } k     n � �  � � � r      � � � J     ����   � o      ���� 0 	musicdata 	musicData �  � � � r     � � � m    ����  � o      ���� 0 trackcounter trackCounter �  � � � r   	  � � � m   	 
����  � o      ���� 0 batchcounter batchCounter �  � � � l   ��������  ��  ��   �  ��� � O    n � � � k    m � �  � � � r     � � � n     � � � 2   ��
�� 
cTrk � 4    �� �
�� 
cPly � o    ����  0 targetplaylist targetPlaylist � o      ����  0 playlisttracks playlistTracks �  � � � X    d ��� � � k   * _ � �  � � � r   * 4 � � � J   * 2 � �  � � � n   * - � � � 1   + -��
�� 
pPIS � o   * +���� 0 atrack aTrack �  ��� � n   - 0 � � � 1   . 0��
�� 
pPlC � o   - .���� 0 atrack aTrack��   � o      ���� 0 	trackinfo 	trackInfo �  � � � s   5 9 � � � o   5 6���� 0 	trackinfo 	trackInfo � n       � � �  ;   7 8 � o   6 7���� 0 	musicdata 	musicData �  � � � Z   : Y � ����� � l  : ? ����� � =   : ? � � � `   : = � � � o   : ;���� 0 trackcounter trackCounter � o   ; <���� 0 	batchsize 	batchSize � m   = >����  ��  ��   � k   B U � �  � � � n  B J � � � I   C J�� ����� ,0 saveplaycounttobatch savePlayCountToBatch �  � � � o   C D���� 0 	musicdata 	musicData �  � � � o   D E���� 0 savefiledir saveFileDir �  ��� � o   E F���� 0 batchcounter batchCounter��  ��   �  f   B C �  � � � r   K O � � � J   K M��   � o      �~�~ 0 	musicdata 	musicData �  ��} � r   P U � � � [   P S � � � o   P Q�|�| 0 batchcounter batchCounter � m   Q R�{�{  � o      �z�z 0 batchcounter batchCounter�}  ��  ��   �  ��y � r   Z _ � � � [   Z ] � � � o   Z [�x�x 0 trackcounter trackCounter � m   [ \�w�w  � o      �v�v 0 trackcounter trackCounter�y  �� 0 atrack aTrack � o    �u�u  0 playlisttracks playlistTracks �  ��t � n  e m � � � I   f m�s ��r�s ,0 saveplaycounttobatch savePlayCountToBatch �  � � � o   f g�q�q 0 	musicdata 	musicData �  � � � o   g h�p�p 0 savefiledir saveFileDir �  ��o � o   h i�n�n 0 batchcounter batchCounter�o  �r   �  f   e f�t   � m     � ��                                                                                      @ alis    ,  Macintosh HD               �<�*BD ����	Music.app                                                      �����<�*        ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��  ��   {  � � � l     �m�l�k�m  �l  �k   �  � � � l     �j�i�h�j  �i  �h   �  � � � i     � � � I      �g ��f�g ,0 saveplaycounttobatch savePlayCountToBatch �  � � � o      �e�e 0 	musicdata 	musicData �  � � � o      �d�d 0 savefiledir saveFileDir �  ��c � o      �b�b 0 batchcounter batchCounter�c  �f   � k     ' � �  � � � r     	 � � � b      � � � b      � � � b      � � � o     �a�a 0 savefiledir saveFileDir � m     � � � � �  / e x p o r t _ � o    �`�` 0 batchcounter batchCounter � m     � � � � �  . c s v � o      �_�_ 0 savepath savePath �  � � � I  
 �^ �]
�^ .ascrcmnt****      � ****  b   
  b   
  b   
  b   
  b   
 	
	 b   
  m   
  �  S a v i n g   l   �\�[ I   �Z�Y
�Z .corecnte****       **** o    �X�X 0 	musicdata 	musicData�Y  �\  �[  
 m     � ,   t r a c k   d a t a   b a t c h   N o .   o    �W�W 0 batchcounter batchCounter m     �    t o   o    �V�V 0 savepath savePath m     �  .�]   � �U n    ' I   ! '�T�S�T *0 saveplaycountstocsv savePlayCountsToCsv  o   ! "�R�R 0 	musicdata 	musicData �Q o   " #�P�P 0 savepath savePath�Q  �S    f     !�U   �  l     �O�N�M�O  �N  �M    !  l     �L�K�J�L  �K  �J  ! "#" i    $%$ I      �I&�H�I *0 saveplaycountstocsv savePlayCountsToCsv& '(' o      �G�G 0 playcountdata playCountData( )�F) o      �E�E 0 savefilepath saveFilePath�F  �H  % k     �** +,+ r     -.- b     /0/ m     11 �22  I D , P l a y e d   C o u n t0 o    �D
�D 
ret . o      �C�C 0 
csvcontent 
csvContent, 343 X    ,5�B65 r    '787 b    %9:9 b    #;<; b    =>= b    ?@? o    �A�A 0 
csvcontent 
csvContent@ l   A�@�?A n    BCB 4    �>D
�> 
cobjD m    �=�= C o    �<�< 0 itemdata itemData�@  �?  > m    EE �FF  ,< l   "G�;�:G n    "HIH 4    "�9J
�9 
cobjJ m     !�8�8 I o    �7�7 0 itemdata itemData�;  �:  : o   # $�6
�6 
ret 8 o      �5�5 0 
csvcontent 
csvContent�B 0 itemdata itemData6 o   	 
�4�4 0 playcountdata playCountData4 KLK l  - -�3�2�1�3  �2  �1  L MNM Q   - }OPQO k   0 [RR STS r   0 <UVU I  0 :�0WX
�0 .rdwropenshor       fileW 4   0 4�/Y
�/ 
psxfY o   2 3�.�. 0 savefilepath saveFilePathX �-Z�,
�- 
permZ m   5 6�+
�+ boovtrue�,  V o      �*�* 0 fileref fileRefT [\[ I  = D�)]^
�) .rdwrseofnull���     ****] o   = >�(�( 0 fileref fileRef^ �'_�&
�' 
set2_ m   ? @�%�%  �&  \ `a` I  E N�$bc
�$ .rdwrwritnull���     ****b o   E F�#�# 0 
csvcontent 
csvContentc �"de
�" 
refnd o   G H�!�! 0 fileref fileRefe � f�
�  
as  f m   I J�
� 
utf8�  a ghg I  O T�i�
� .rdwrclosnull���     ****i o   O P�� 0 fileref fileRef�  h j�j L   U [kk b   U Zlml m   U Xnn �oo * C S V   f i l e   c r e a t e d   a t :  m o   X Y�� 0 savefilepath saveFilePath�  P R      �p�
� .ascrerr ****      � ****p o      �� 0 errmsg errMsg�  Q k   c }qq rsr Q   c ttu�t I  f k�v�
� .rdwrclosnull���     ****v o   f g�� 0 fileref fileRef�  u R      ���
� .ascrerr ****      � ****�  �  �  s w�w R   u }�x�
� .ascrerr ****      � ****x b   w |yzy m   w z{{ �|| , F a i l e d   t o   w r i t e   f i l e :  z o   z {�� 0 errmsg errMsg�  �  N }~} l  ~ ~�
�	��
  �	  �  ~ � I  ~ ����
� .ascrcmnt****      � ****� b   ~ ���� m   ~ ��� ��� * C S V   f i l e   c r e a t e d   a t :  � o   � ��� 0 savefilepath saveFilePath�  �  # ��� l     ����  �  �  � ��� l      � ���   �3-on batchSavePlayCountsToCsvs(playCountData, batchNumber, saveFileDir)	set batchData to recursiveSplit(playCountData, batchNumber, {})	repeat with batch in batchData		log (count of batch)	end repeatend batchSavePlayCountsToCsvson recursiveSplit(sourceList, chunkSize, accumulator)	if (count of sourceList) � chunkSize then		return accumulator & {sourceList}	else		set newAcc to accumulator & {items 1 thru chunkSize of sourceList}		return recursiveSplit(items (chunkSize + 1) thru -1 of sourceList, chunkSize, newAcc)	end ifend recursiveSplit   � ���Z  o n   b a t c h S a v e P l a y C o u n t s T o C s v s ( p l a y C o u n t D a t a ,   b a t c h N u m b e r ,   s a v e F i l e D i r )  	 s e t   b a t c h D a t a   t o   r e c u r s i v e S p l i t ( p l a y C o u n t D a t a ,   b a t c h N u m b e r ,   { } )  	 r e p e a t   w i t h   b a t c h   i n   b a t c h D a t a  	 	 l o g   ( c o u n t   o f   b a t c h )  	 e n d   r e p e a t  e n d   b a t c h S a v e P l a y C o u n t s T o C s v s   o n   r e c u r s i v e S p l i t ( s o u r c e L i s t ,   c h u n k S i z e ,   a c c u m u l a t o r )  	 i f   ( c o u n t   o f   s o u r c e L i s t )  "d   c h u n k S i z e   t h e n  	 	 r e t u r n   a c c u m u l a t o r   &   { s o u r c e L i s t }  	 e l s e  	 	 s e t   n e w A c c   t o   a c c u m u l a t o r   &   { i t e m s   1   t h r u   c h u n k S i z e   o f   s o u r c e L i s t }  	 	 r e t u r n   r e c u r s i v e S p l i t ( i t e m s   ( c h u n k S i z e   +   1 )   t h r u   - 1   o f   s o u r c e L i s t ,   c h u n k S i z e ,   n e w A c c )  	 e n d   i f  e n d   r e c u r s i v e S p l i t � ��� l     ��������  ��  ��  � ��� i    ��� I      ������� <0 createplaylistbypersistentid createPlaylistByPersistentID� ��� o      ���� 0 persistentids persistentIDs� ���� o      ���� 0 playlistname playlistName��  ��  � O     ���� k    ��� ��� l   ������  �  	 ????????   � ���   R^�zzv}d�e>R�h� ��� r    ��� I   �����
�� .corecrel****      � null��  � ����
�� 
kocl� m    ��
�� 
cUsP� �����
�� 
prdt� K    �� �����
�� 
pnam� o   	 
���� 0 playlistname playlistName��  ��  � o      ���� 0 newplaylist newPlaylist� ��� r    ��� m    ����  � o      ���� 0 successcount successCount� ��� l   ��������  ��  ��  � ��� l   ������  �  	 ????ID??   � ���   �MS�cNE I Dep~�� ��� X    s����� Q   ' n���� k   * W�� ��� l  * *������  �  	 ??????ID   � ���   |�xnS9�McNE I D� ��� r   * 8��� l  * 6������ 6  * 6��� 2   * -��
�� 
cTrk� =  . 5��� 1   / 1��
�� 
pPIS� o   2 4���� 0 persistentid persistentID��  ��  � o      ���� 0 foundtracks foundTracks� ���� Z   9 W������� ?   9 @��� l  9 >������ I  9 >�����
�� .corecnte****       ****� o   9 :���� 0 foundtracks foundTracks��  ��  ��  � m   > ?����  � k   C S�� ��� I  C M����
�� .coreclon****      � ****� l  C G������ n   C G��� 4   D G���
�� 
cobj� m   E F���� � o   C D���� 0 foundtracks foundTracks��  ��  � �����
�� 
insh� o   H I���� 0 newplaylist newPlaylist��  � ���� r   N S��� [   N Q��� o   N O���� 0 successcount successCount� m   O P���� � o      ���� 0 successcount successCount��  ��  ��  ��  � R      �����
�� .ascrerr ****      � ****� o      ���� 0 errmsg errMsg��  � I  _ n�����
�� .ascrcmnt****      � ****� b   _ j��� b   _ h��� b   _ d��� m   _ b�� ��� N F a i l e d   t o   f i n d   t r a c k   w i t h   p e r s i s t e n   I D  � o   b c���� 0 persistentid persistentID� m   d g�� ���  .  � o   h i���� 0 errmsg errMsg��  �� 0 persistentid persistentID� o    ���� 0 persistentids persistentIDs� ��� l  t t��������  ��  ��  � ���� L   t ��� b   t ���� b   t ���� b   t ���� b   t ��� b   t }��� b   t y��� m   t w�� ��� < S u c c e s s f u l l y   c r e a t e d   p l a y l i s t  � o   w x���� 0 playlistname playlistName� m   y |�� ���    w i t h  � o   } ~���� 0 successcount successCount� m    ��� �    /� l  � ����� I  � �����
�� .corecnte****       **** o   � ����� 0 persistentids persistentIDs��  ��  ��  � m   � � �    t r a c k s .��  � m     �                                                                                      @ alis    ,  Macintosh HD               �<�*BD ����	Music.app                                                      �����<�*        ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��  �  l     ��������  ��  ��   	 l     ��������  ��  ��  	 

 l      ����  ��
on getTrackPIDsFromPlaylist(playlistName)	tell application "Music"		set targetPlaylist to playlist playlistName				set outputList to {}		repeat with aTrack in tracks of targetPlaylist			set trackId to persistent ID of aTrack			set end of outputList to trackId		end repeat				return outputList	end tellend getTrackPIDsFromPlaylist


on savePIDsToCsv(pids, saveFilePath)	set csvContent to ""	repeat with pid in pids		set csvContent to csvContent & pid & return	end repeat		try		set fileRef to open for access POSIX file saveFilePath with write permission		set eof fileRef to 0		write csvContent to fileRef as �class utf8�		close access fileRef		return "CSV file created at: " & saveFilePath	on error errMsg		try			close access fileRef		end try		error "Failed to write file: " & errMsg	end try		log "CSV file created at: " & saveFilePathend savePIDsToCsv

on getTrackTitlesFromPlaylist(playlistName)	tell application "Music"		set targetPlaylist to playlist playlistName				set outputList to {}		repeat with aTrack in tracks of targetPlaylist			set trackId to name of aTrack			set end of outputList to trackId		end repeat				return outputList	end tellend getTrackTitlesFromPlaylist    �	� 
 o n   g e t T r a c k P I D s F r o m P l a y l i s t ( p l a y l i s t N a m e )  	 t e l l   a p p l i c a t i o n   " M u s i c "  	 	 s e t   t a r g e t P l a y l i s t   t o   p l a y l i s t   p l a y l i s t N a m e  	 	  	 	 s e t   o u t p u t L i s t   t o   { }  	 	 r e p e a t   w i t h   a T r a c k   i n   t r a c k s   o f   t a r g e t P l a y l i s t  	 	 	 s e t   t r a c k I d   t o   p e r s i s t e n t   I D   o f   a T r a c k  	 	 	 s e t   e n d   o f   o u t p u t L i s t   t o   t r a c k I d  	 	 e n d   r e p e a t  	 	  	 	 r e t u r n   o u t p u t L i s t  	 e n d   t e l l  e n d   g e t T r a c k P I D s F r o m P l a y l i s t 
 
 
 o n   s a v e P I D s T o C s v ( p i d s ,   s a v e F i l e P a t h )  	 s e t   c s v C o n t e n t   t o   " "  	 r e p e a t   w i t h   p i d   i n   p i d s  	 	 s e t   c s v C o n t e n t   t o   c s v C o n t e n t   &   p i d   &   r e t u r n  	 e n d   r e p e a t  	  	 t r y  	 	 s e t   f i l e R e f   t o   o p e n   f o r   a c c e s s   P O S I X   f i l e   s a v e F i l e P a t h   w i t h   w r i t e   p e r m i s s i o n  	 	 s e t   e o f   f i l e R e f   t o   0  	 	 w r i t e   c s v C o n t e n t   t o   f i l e R e f   a s   � c l a s s   u t f 8 �  	 	 c l o s e   a c c e s s   f i l e R e f  	 	 r e t u r n   " C S V   f i l e   c r e a t e d   a t :   "   &   s a v e F i l e P a t h  	 o n   e r r o r   e r r M s g  	 	 t r y  	 	 	 c l o s e   a c c e s s   f i l e R e f  	 	 e n d   t r y  	 	 e r r o r   " F a i l e d   t o   w r i t e   f i l e :   "   &   e r r M s g  	 e n d   t r y  	  	 l o g   " C S V   f i l e   c r e a t e d   a t :   "   &   s a v e F i l e P a t h  e n d   s a v e P I D s T o C s v 
 
  o n   g e t T r a c k T i t l e s F r o m P l a y l i s t ( p l a y l i s t N a m e )  	 t e l l   a p p l i c a t i o n   " M u s i c "  	 	 s e t   t a r g e t P l a y l i s t   t o   p l a y l i s t   p l a y l i s t N a m e  	 	  	 	 s e t   o u t p u t L i s t   t o   { }  	 	 r e p e a t   w i t h   a T r a c k   i n   t r a c k s   o f   t a r g e t P l a y l i s t  	 	 	 s e t   t r a c k I d   t o   n a m e   o f   a T r a c k  	 	 	 s e t   e n d   o f   o u t p u t L i s t   t o   t r a c k I d  	 	 e n d   r e p e a t  	 	  	 	 r e t u r n   o u t p u t L i s t  	 e n d   t e l l  e n d   g e t T r a c k T i t l e s F r o m P l a y l i s t   l     ��������  ��  ��    l     ��������  ��  ��    i     I      ������ 20 saveplaylisttrackstotxt savePlaylistTracksToTxt  o      ���� 0 playlistname playlistName �� o      ���� 0 savefilepath saveFilePath��  ��   O     F k    E  r     !  m    "" �##  ! o      ���� 0 
txtcontent 
txtContent $%$ l   ��������  ��  ��  % &'& r    ()( 4    ��*
�� 
cPly* o   
 ���� 0 playlistname playlistName) o      ����  0 targetplaylist targetPlaylist' +,+ X    5-��.- r   ! 0/0/ b   ! .121 b   ! ,343 b   ! (565 b   ! &787 o   ! "���� 0 
txtcontent 
txtContent8 n   " %9:9 1   # %��
�� 
pArt: o   " #���� 0 atrack aTrack6 m   & ';; �<<    -  4 n   ( +=>= 1   ) +��
�� 
pnam> o   ( )���� 0 atrack aTrack2 o   , -��
�� 
ret 0 o      ���� 0 
txtcontent 
txtContent�� 0 atrack aTrack. n    ?@? 2   ��
�� 
cTrk@ o    ����  0 targetplaylist targetPlaylist, ABA l  6 6��������  ��  ��  B C��C I  6 E��D��
�� .sysoexecTEXT���     TEXTD b   6 AEFE b   6 =GHG b   6 ;IJI m   6 7KK �LL 
 e c h o  J n   7 :MNM 1   8 :��
�� 
strqN o   7 8���� 0 
txtcontent 
txtContentH m   ; <OO �PP :   |   i c o n v   - f   U T F - 8   - t   U T F - 8   >  F n   = @QRQ 1   > @��
�� 
strqR o   = >���� 0 savefilepath saveFilePath��  ��   m     SS�                                                                                      @ alis    ,  Macintosh HD               �<�*BD ����	Music.app                                                      �����<�*        ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��   TUT l     ��������  ��  ��  U VWV l     ��������  ��  ��  W XYX i    Z[Z I      ��\���� (0 savetrackinfototxt saveTrackInfoToTxt\ ]^] o      ���� 0 persistentids persistentIDs^ _�_ o      �~�~ 0 savefilepath saveFilePath�  ��  [ O     O`a` k    Nbb cdc r    efe m    gg �hh  f o      �}�} 0 
txtcontent 
txtContentd iji l   �|�{�z�|  �{  �z  j klk X    >m�ynm k    9oo pqp r    )rsr l   't�x�wt 6   'uvu n    wxw 3    �v
�v 
cTrkx 4    �uy
�u 
cLiPy m    �t�t v =   &z{z 1     "�s
�s 
pPIS{ o   # %�r�r 0 pid  �x  �w  s o      �q�q 0 atrack aTrackq |�p| r   * 9}~} b   * 7� b   * 5��� b   * 1��� b   * /��� o   * +�o�o 0 
txtcontent 
txtContent� n   + .��� 1   , .�n
�n 
pArt� o   + ,�m�m 0 atrack aTrack� m   / 0�� ���    -  � n   1 4��� 1   2 4�l
�l 
pnam� o   1 2�k�k 0 atrack aTrack� o   5 6�j
�j 
ret ~ o      �i�i 0 
txtcontent 
txtContent�p  �y 0 pid  n o    �h�h 0 persistentids persistentIDsl ��� l  ? ?�g�f�e�g  �f  �e  � ��d� I  ? N�c��b
�c .sysoexecTEXT���     TEXT� b   ? J��� b   ? F��� b   ? D��� m   ? @�� ��� 
 e c h o  � n   @ C��� 1   A C�a
�a 
strq� o   @ A�`�` 0 
txtcontent 
txtContent� m   D E�� ��� :   |   i c o n v   - f   U T F - 8   - t   U T F - 8   >  � n   F I��� 1   G I�_
�_ 
strq� o   F G�^�^ 0 savefilepath saveFilePath�b  �d  a m     ���                                                                                      @ alis    ,  Macintosh HD               �<�*BD ����	Music.app                                                      �����<�*        ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��  Y ��� l     �]�\�[�]  �\  �[  � ��� l     �Z�Y�X�Z  �Y  �X  � ��� i    ��� I      �W��V�W ,0 readchartdatafromcsv readChartDataFromCsv� ��U� o      �T�T 0 filepath filePath�U  �V  � k     ��� ��� r     ��� J     �S�S  � o      �R�R 0 csvdata csvData� ��Q� Q    ����� k    p�� ��� r    ��� I   �P��O
�P .rdwropenshor       file� o    	�N�N 0 filepath filePath�O  � o      �M�M 0 fileref fileRef� ��� r    ��� I   �L��K
�L .rdwrread****        ****� o    �J�J 0 fileref fileRef�K  � o      �I�I 0 csvtext csvText� ��� I   �H��G
�H .rdwrclosnull���     ****� o    �F�F 0 fileref fileRef�G  � ��� l   �E�D�C�E  �D  �C  � ��� r    5��� J    $�� ��� n   !��� 1    !�B
�B 
txdl� 1    �A
�A 
ascr� ��@� m   ! "�� ���  ,�@  � J      �� ��� o      �?�? 0 olddelimiters oldDelimiters� ��>� n     ��� 1   1 3�=
�= 
txdl� 1   0 1�<
�< 
ascr�>  � ��� l  6 6�;�:�9�;  �:  �9  � ��� r   6 ;��� n   6 9��� 2  7 9�8
�8 
cpar� o   6 7�7�7 0 csvtext csvText� o      �6�6 0 rows  � ��� X   < g��5�� Z   L b���4�3� ?   L Q��� n   L O��� 1   M O�2
�2 
leng� o   L M�1�1 0 row  � m   O P�0�0  � k   T ^�� ��� r   T Y��� n   T W��� 2  U W�/
�/ 
citm� o   T U�.�. 0 row  � o      �-�- 0 columns  � ��,� r   Z ^��� o   Z [�+�+ 0 columns  � n      ���  ;   \ ]� o   [ \�*�* 0 csvdata csvData�,  �4  �3  �5 0 row  � o   ? @�)�) 0 rows  � ��� l  h h�(�'�&�(  �'  �&  � ��� r   h m��� o   h i�%�% 0 olddelimiters oldDelimiters� n     ��� 1   j l�$
�$ 
txdl� 1   i j�#
�# 
ascr� ��"� L   n p�� o   n o�!�! 0 csvdata csvData�"  � R      � ��
�  .ascrerr ****      � ****� o      �� 0 err  �  � k   x ��� � � I  x ��
� .ascrcmnt****      � **** b   x { m   x y � ( F a i l e d   t o   r e a d   c s v :   o   y z�� 0 err  �    � L   � � J   � ���  �  �Q  � 	 l     ����  �  �  	 

 l     ����  �  �    i     I      ��� 0 	getcolumn 	getColumn  o      �� 0 	twodarray 	twoDArray � o      �� 0 columnindex columnIndex�  �   k     5  r      J     ��   o      �� 0 
columndata 
columnData  X    2� Z    -�
 @     !  l   "�	�" I   �#�
� .corecnte****       ****# o    �� 0 row  �  �	  �  ! o    �� 0 columnindex columnIndex r    &$%$ n    #&'& 4     #�(
� 
cobj( o   ! "�� 0 columnindex columnIndex' o     �� 0 row  % n      )*)  ;   $ %* o   # $� �  0 
columndata 
columnData�
   r   ) -+,+ m   ) *��
�� 
msng, n      -.-  ;   + ,. o   * +���� 0 
columndata 
columnData� 0 row   o    	���� 0 	twodarray 	twoDArray /��/ L   3 500 o   3 4���� 0 
columndata 
columnData��   121 l     ��������  ��  ��  2 343 l     ��������  ��  ��  4 565 i     #787 I      ��9���� *0 gettrackinfofrompid getTrackInfoFromPID9 :��: o      ���� 0 persistentid persistentID��  ��  8 k     );; <=< O     ">?> k    !@@ ABA r    CDC 6   EFE n    
GHG 3    
��
�� 
cTrkH 4    ��I
�� 
cLiPI m    ���� F =   JKJ 1    ��
�� 
pPISK o    ���� 0 persistentid persistentIDD o      ���� 0 thetrack theTrackB LML r    NON l   P����P n    QRQ 1    ��
�� 
pnamR o    ���� 0 thetrack theTrack��  ��  O o      ���� 0 
tracktitle 
trackTitleM S��S r    !TUT l   V����V n    WXW 1    ��
�� 
pArtX o    ���� 0 thetrack theTrack��  ��  U o      ���� 0 trackartist trackArtist��  ? m     YY�                                                                                      @ alis    ,  Macintosh HD               �<�*BD ����	Music.app                                                      �����<�*        ����  
 cu             Applications   /:System:Applications:Music.app/   	 M u s i c . a p p    M a c i n t o s h   H D  System/Applications/Music.app   / ��  = Z��Z L   # )[[ b   # (\]\ b   # &^_^ o   # $���� 0 trackartist trackArtist_ m   $ %`` �aa    -  ] o   & '���� 0 
tracktitle 
trackTitle��  6 bcb l     ��������  ��  ��  c ded l     ��������  ��  ��  e fgf l     ��hi��  h � �set resultData to readChartDataFromCsv(POSIX file "/Users/charliec/Library/CloudStorage/OneDrive-Personal/CharlieCares/charrrboard/Charrrboard.csv")   i �jj( s e t   r e s u l t D a t a   t o   r e a d C h a r t D a t a F r o m C s v ( P O S I X   f i l e   " / U s e r s / c h a r l i e c / L i b r a r y / C l o u d S t o r a g e / O n e D r i v e - P e r s o n a l / C h a r l i e C a r e s / c h a r r r b o a r d / C h a r r r b o a r d . c s v " )g klk l     ��mn��  m * $set pids to getColumn(resultData, 1)   n �oo H s e t   p i d s   t o   g e t C o l u m n ( r e s u l t D a t a ,   1 )l pqp l     ��������  ��  ��  q rsr l     ��tu��  t � �savePlaylistTrackInfoToTxt("Charrrboard 2025.05.23", POSIX file "/Users/charliec/Library/CloudStorage/OneDrive-Personal/CharlieCares/charrrboard/newBoard.txt")   u �vv> s a v e P l a y l i s t T r a c k I n f o T o T x t ( " C h a r r r b o a r d   2 0 2 5 . 0 5 . 2 3 " ,   P O S I X   f i l e   " / U s e r s / c h a r l i e c / L i b r a r y / C l o u d S t o r a g e / O n e D r i v e - P e r s o n a l / C h a r l i e C a r e s / c h a r r r b o a r d / n e w B o a r d . t x t " )s wxw l     ��yz��  y � �saveTrackInfoToTxt(pids, "/Users/charliec/Library/CloudStorage/OneDrive-Personal/CharlieCares/charrrboard/Charrrboard_TrackInfo.txt")   z �{{
 s a v e T r a c k I n f o T o T x t ( p i d s ,   " / U s e r s / c h a r l i e c / L i b r a r y / C l o u d S t o r a g e / O n e D r i v e - P e r s o n a l / C h a r l i e C a r e s / c h a r r r b o a r d / C h a r r r b o a r d _ T r a c k I n f o . t x t " )x |}| l     ��������  ��  ��  } ~~ l     ��������  ��  ��   ���� l     ��������  ��  ��  ��   q ��������������  � 	�������������������� B0 exportplaylistplaycountsinbatch exportPlaylistPlayCountsInBatch�� ,0 saveplaycounttobatch savePlayCountToBatch�� *0 saveplaycountstocsv savePlayCountsToCsv�� <0 createplaylistbypersistentid createPlaylistByPersistentID�� 20 saveplaylisttrackstotxt savePlaylistTracksToTxt�� (0 savetrackinfototxt saveTrackInfoToTxt�� ,0 readchartdatafromcsv readChartDataFromCsv�� 0 	getcolumn 	getColumn�� *0 gettrackinfofrompid getTrackInfoFromPID� �� }���������� B0 exportplaylistplaycountsinbatch exportPlaylistPlayCountsInBatch�� ����� �  ��������  0 targetplaylist targetPlaylist�� 0 	batchsize 	batchSize�� 0 savefiledir saveFileDir��  � 	��������������������  0 targetplaylist targetPlaylist�� 0 	batchsize 	batchSize�� 0 savefiledir saveFileDir�� 0 	musicdata 	musicData�� 0 trackcounter trackCounter�� 0 batchcounter batchCounter��  0 playlisttracks playlistTracks�� 0 atrack aTrack�� 0 	trackinfo 	trackInfo� 	 �����������������
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
pPlC�� ,0 saveplaycounttobatch savePlayCountToBatch�� ojvE�OkE�OkE�O� ^*�/�-E�O I�[��l kh ��,��,lvE�O��6GO��#j  )���m+ OjvE�O�kE�Y hO�kE�[OY��O)���m+ U� �� ����������� ,0 saveplaycounttobatch savePlayCountToBatch�� ����� �  �������� 0 	musicdata 	musicData�� 0 savefiledir saveFileDir�� 0 batchcounter batchCounter��  � ���������� 0 	musicdata 	musicData�� 0 savefiledir saveFileDir�� 0 batchcounter batchCounter�� 0 savepath savePath� 	 � �������
�� .corecnte****       ****
�� .ascrcmnt****      � ****�� *0 saveplaycountstocsv savePlayCountsToCsv�� (��%�%�%E�O�j %�%�%�%�%�%j O)��l+ � ��%���������� *0 saveplaycountstocsv savePlayCountsToCsv�� ����� �  ������ 0 playcountdata playCountData�� 0 savefilepath saveFilePath��  � �������������� 0 playcountdata playCountData�� 0 savefilepath saveFilePath�� 0 
csvcontent 
csvContent�� 0 itemdata itemData�� 0 fileref fileRef�� 0 errmsg errMsg� 1��������E��������~�}�|�{�z�y�xn�w�v�u{��t
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
� 
set2
�~ .rdwrseofnull���     ****
�} 
refn
�| 
as  
�{ 
utf8�z 
�y .rdwrwritnull���     ****
�x .rdwrclosnull���     ****�w 0 errmsg errMsg�v  �u  
�t .ascrcmnt****      � ****�� ���%E�O %�[��l kh ���k/%�%��l/%�%E�[OY��O 0*�/�el E�O��jl 
O����� O�j Oa �%W !X   
�j W X  hO)ja �%Oa �%j � �s��r�q���p�s <0 createplaylistbypersistentid createPlaylistByPersistentID�r �o��o �  �n�m�n 0 persistentids persistentIDs�m 0 playlistname playlistName�q  � �l�k�j�i�h�g�f�l 0 persistentids persistentIDs�k 0 playlistname playlistName�j 0 newplaylist newPlaylist�i 0 successcount successCount�h 0 persistentid persistentID�g 0 foundtracks foundTracks�f 0 errmsg errMsg� �e�d�c�b�a�`�_�^�]��\�[�Z�Y�X���W���
�e 
kocl
�d 
cUsP
�c 
prdt
�b 
pnam�a 
�` .corecrel****      � null
�_ 
cobj
�^ .corecnte****       ****
�] 
cTrk�  
�\ 
pPIS
�[ 
insh
�Z .coreclon****      � ****�Y 0 errmsg errMsg�X  
�W .ascrcmnt****      � ****�p �� �*����l� E�OjE�O [�[��l kh  2*�-�[�,\Z�81E�O�j j ��k/�l O�kE�Y hW X  a �%a %�%j [OY��Oa �%a %�%a %�j %a %U� �V�U�T���S�V 20 saveplaylisttrackstotxt savePlaylistTracksToTxt�U �R��R �  �Q�P�Q 0 playlistname playlistName�P 0 savefilepath saveFilePath�T  � �O�N�M�L�K�O 0 playlistname playlistName�N 0 savefilepath saveFilePath�M 0 
txtcontent 
txtContent�L  0 targetplaylist targetPlaylist�K 0 atrack aTrack� S"�J�I�H�G�F�E;�D�CK�BO�A
�J 
cPly
�I 
cTrk
�H 
kocl
�G 
cobj
�F .corecnte****       ****
�E 
pArt
�D 
pnam
�C 
ret 
�B 
strq
�A .sysoexecTEXT���     TEXT�S G� C�E�O*�/E�O %��-[��l kh ���,%�%��,%�%E�[OY��O��,%�%��,%j U� �@[�?�>���=�@ (0 savetrackinfototxt saveTrackInfoToTxt�? �<��< �  �;�:�; 0 persistentids persistentIDs�: 0 savefilepath saveFilePath�>  � �9�8�7�6�5�9 0 persistentids persistentIDs�8 0 savefilepath saveFilePath�7 0 
txtcontent 
txtContent�6 0 pid  �5 0 atrack aTrack� �g�4�3�2�1�0��/�.��-�,��+��*
�4 
kocl
�3 
cobj
�2 .corecnte****       ****
�1 
cLiP
�0 
cTrk
�/ 
pPIS
�. 
pArt
�- 
pnam
�, 
ret 
�+ 
strq
�* .sysoexecTEXT���     TEXT�= P� L�E�O 5�[��l kh *�k/�.�[�,\Z�81E�O���,%�%��,%�%E�[OY��O���,%�%��,%j U� �)��(�'���&�) ,0 readchartdatafromcsv readChartDataFromCsv�( �%��% �  �$�$ 0 filepath filePath�'  � 	�#�"�!� ������# 0 filepath filePath�" 0 csvdata csvData�! 0 fileref fileRef�  0 csvtext csvText� 0 olddelimiters oldDelimiters� 0 rows  � 0 row  � 0 columns  � 0 err  � ���������������
� .rdwropenshor       file
� .rdwrread****        ****
� .rdwrclosnull���     ****
� 
ascr
� 
txdl
� 
cobj
� 
cpar
� 
kocl
� .corecnte****       ****
� 
leng
� 
citm� 0 err  �  
� .ascrcmnt****      � ****�& �jvE�O m�j  E�O�j E�O�j O��,�lvE[�k/E�Z[�l/��,FZO��-E�O *�[��l 	kh ��,j ��-E�O��6FY h[OY��O���,FO�W X  �%j Ojv� ���
���	� 0 	getcolumn 	getColumn� ��� �  ��� 0 	twodarray 	twoDArray� 0 columnindex columnIndex�
  � ����� 0 	twodarray 	twoDArray� 0 columnindex columnIndex� 0 
columndata 
columnData� 0 row  � �� ����
� 
kocl
�  
cobj
�� .corecnte****       ****
�� 
msng�	 6jvE�O ,�[��l kh �j � ��/�6FY �6F[OY��O�� ��8���������� *0 gettrackinfofrompid getTrackInfoFromPID�� ����� �  ���� 0 persistentid persistentID��  � ���������� 0 persistentid persistentID�� 0 thetrack theTrack�� 0 
tracktitle 
trackTitle�� 0 trackartist trackArtist� Y�����������`
�� 
cLiP
�� 
cTrk
�� 
pPIS
�� 
pnam
�� 
pArt�� *� *�k/�.�[�,\Z�81E�O��,E�O��,E�UO��%�% c ���  2 0 2 5 . 0 7 . 0 6 d ��� � / U s e r s / c h a r l i e c / m y D e v / A p p l e S c r i p t s / A p p l e M u s i c W e e k l y C h a r t / W o r k i n g F o l d e r / A l l E x p o r t _ 2 0 2 5 . 0 7 . 0 6��   ascr  ��ޭ