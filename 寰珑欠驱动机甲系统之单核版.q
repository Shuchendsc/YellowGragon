[General]
SyntaxVersion=2
BeginHotkey=33
BeginHotkeyMod=8
PauseHotkey=19
PauseHotkeyMod=0
StopHotkey=34
StopHotkeyMod=8
RunOnce=1
EnableWindow=
MacroID=779b0900-3c5f-4614-ab19-9744bb22167e
Description=���Ƿ��������ϵͳ֮���˰�
Enable=1
AutoRun=0
[Repeat]
Type=2
Number=21660
[SetupUI]
Type=1
QUI=Form1
[Relative]
SetupOCXFile=
[Comment]

[Script]
//����骵���������С��վ�ֿ���
//�ҵ�dnf���ƶ������Ͻ�
dnf=Plugin.Window.Find("���³�����ʿ", "���³�����ʿ")
SB=0
//վ�ֵ����Ļ
Rem ��һλ
Call Plugin.Window.Move(dnf, 0, 0)
Delay int(Rnd*2+2)*300
  MoveTo 460+int(Rnd*10+1), 3+int(Rnd*3+1)
  Delay int(Rnd*2+1)*100
  LeftClick 1
  Delay int(Rnd*2+1)*200
  LeftClick 1
  Delay int(Rnd*2+1)*800
//ͨ�����̲����ý�ɫ�ߵ������ſ�
  Delay int(Rnd*2+2)*100
  For 10
  KeyPress "S", 4
  Delay int(Rnd*2+2)*200
  Next
  Delay int(Rnd*2+4)*200
  KeyPress "W", 3
  Delay int(Rnd*2+6)*200
  KeyPress "S", 4
  Delay int(Rnd*2+6)*200
  For 18
  KeyPress "A", 4
  Delay int(Rnd*2+1)*100
  KeyPress "W", 4
  Delay int(Rnd*2+1)*100
  Next
  KeyPress "S", 10
  Delay int(Rnd*2+1)*100
  For 18
  KeyPress "D", 4
  Delay int(Rnd*2+1)*100
  KeyPress "W", 4
  Delay int(Rnd*2+1)*100
  Next
  For 10
  KeyPress "S", 2
  Delay int(Rnd*2+1)*100
  KeyPress "D", 4
  Delay int(Rnd*2+1)*100
  Next
//����������ͼ��
For 2
MoveTo 520+int(Rnd*15+1), 400+int(Rnd*15+1)
Delay int(Rnd*3+2)*200
LeftClick 1
Delay int(Rnd*3+2)*200
Next
//��ѭ�����������̴��
it=1
While it < 500000
    KeyPress "Space", 1
    Delay int(Rnd*4+1)*3
    KeyPress "B", 1
    Delay int(Rnd*4+1)*3
    KeyPress "N", 1
    Delay int(Rnd*4+1)*3
    KeyPress "H", 1
    Delay int(Rnd*4+1)*3
    KeyPress "V", 1 //���＼��
    Delay int(Rnd*4+1)*2
    KeyPress "Y", 1
    Delay int(Rnd*4+1)*3
    KeyPress "U", 1
    Delay int(Rnd*4+1)*3
    KeyPress "X", 1 //�����
    Delay int(Rnd*4+1)*2
    KeyPress "I", 1
    Delay int(Rnd*4+1)*3
    KeyPress "O", 1
    Delay int(Rnd*4+1)*3
    KeyPress "P", 1 
    Delay int(Rnd*4+1)*3
    KeyPress ";", 1
    Delay int(Rnd*4+1)*3
    KeyPress ",", 1
    Delay int(Rnd*4+1)*3
    KeyPress ".", 1
    Delay int(Rnd*4+1)*3
    KeyPress "M", 1
    Delay int(Rnd*4+1)*2
    KeyPress "J", 1
    Delay int(Rnd*4+1)*3
    Call jx()
    Call jc()
    //Call je()
    Call jm()
    //Ѫ������ʱ�Լ�λ1��ҩ
    IfColor 270, 75, "0", 0 Then
        KeyPress "1", 1
    End If
    //��ͼ�ڽ�����
//    FindCenterColor 630,160,680,270,"0082FF",xr,yr
//    If xr>0 and yr>0 Then
//    MoveTo xr, yr
//    Delay 10+int(Rnd*2+1)*200
//    LeftClick 1
//    For 10+int(Rnd*4+1)*30
//    KeyPress "Space", 1
//    Delay 10+int(Rnd*4+1)*30
//    Next
//    KeyPress "ESC", 1
//    Delay 10+int(Rnd*4+1)*30
//    End if
//    IfColor 132, 45, "61CCF3", 0 Then
//    KeyPress "ESC", 1
//    Delay 10+int(Rnd*4+1)*30
//    End If
//    IfColor 131, 45, "6B906A", 0 Then
//    KeyPress "F1", 1
//    Delay 10+int(Rnd*4+1)*30
//    End If
    //��Ʒ�����򿪰�ESC
    IfColor 483, 538, "ADFFFF", 0 Then
    KeyPress "F", 1
    Delay int(Rnd*2+1)*30
    End if
    //�˵����򿪰�ESC
    IfColor 368, 110, "77CCEE", 0 Then
    KeyPress "ESC", 1
    Delay int(Rnd*2+1)*30
    End if
    it=it+1
Wend
ExitScript
//�����������Ʒ���ӳ���
Sub jx()  
    IfColor 472,77,"0",0 Then
        Delay int(Rnd*60+1600)
      //KeyPress "Q", 1
      //Delay int(Rnd*3+2)*500
        KeyPress "E", 1
        Delay int(Rnd*60+800)
        //ͼ�м������ʾ��ʱ��ո�
        FindCenterColor 370,320,430,346,"FFFF63",xk,yk
          If xk>0 and yk>0 Then
          KeyPress "Space", 1
        End If
        For 10
        KeyPress "K", 1
        Delay int(Rnd*50+300)
        Next
    End If
End Sub
//����������߻سǽ�������ӳ�������ٴ���ս�Ƿ�Ϊ��ɫ�����ж�
Sub jc()
    IfColor 696,86,"808080", 0 Then
        KeyPress "F12", 1
        Delay int(Rnd*3+1)*100
        KeyPress "F12", 1
        Delay int(Rnd*3+1)*200
        KeyPress "F12", 1
        Delay int(Rnd*3+1)*500
        KeyPress "F12", 1
        Delay int(Rnd*2+2)*5000
    //��ʹ������
//    For 12
//    Delay int(Rnd*3+1)*300
//    FindCenterColor 270,500,500,550,"1144CC",xa,ya
//    Delay int(Rnd*3+1)*300
//    If xa>0 and ya>0 Then
//        Delay int(Rnd*3+1)*200
//        MoveTo xa, ya
//        Delay int(Rnd*3+1)*200
//        LeftClick 1
//        Delay int(Rnd*3+1)*200
//        LeftClick 1
//        Delay int(Rnd*3+1)*200
//        MoveTo xa, ya
//        Delay int(Rnd*3+1)*200
//        LeftClick 1
//        Delay int(Rnd*3+1)*200
//        LeftClick 1
//        Delay int(Rnd*3+1)*200
//        For 10
//    	    KeyPress "Space", 1
//            Delay int(Rnd*3+1)*400
//        Next
//    Delay int(Rnd*3+1)*300
//    End If
//    Next
    //����ս����
    //For 4
    //Delay int(Rnd*3+1)*200
    //FindCenterColor 270,450,480,550,"66DDFF",xb,yb
    //Delay int(Rnd*3+1)*300
    //If xb>0 and yb>0 Then
        //Delay int(Rnd*3+1)*200
        //MoveTo xb, yb
        //Delay int(Rnd*3+1)*500
        //LeftClick 1
        //Delay int(Rnd*3+1)*500
        //j=0
        //While j<5
            //MoveTo 540+int(Rnd*44+1), 258+int(Rnd*2+1)+j*42
            //Delay int(Rnd*3+1)*200
            //LeftClick 1
            //Delay int(Rnd*3+1)*200
            //LeftClick 1
            //Delay int(Rnd*3+1)*200
            //j=j+1
        //Wend
    //End If
    //Next
    //ѡ��һ��λ�õĽ�ɫ�ɱ���SB����
    KeyPress "Esc", 1
    Delay int(Rnd*3+1)*1000
    For 5
    KeyPress "Esc", 1
    Delay int(Rnd*2+1)*800
    FindCenterColor 360,420,480,460,"3B7F9E",xc,yc
        If xc>0 and yc>0 Then
        Delay int(Rnd*3+3)*200
        MoveTo xc, yc
        Delay int(Rnd*3+3)*600
        LeftClick 1
        Delay int(Rnd*3+3)*900
        MoveTo xc, yc
        Delay int(Rnd*3+3)*900
        LeftClick 1
        Delay int(Rnd*3+2)*800
        End If
    Next
        Delay int(Rnd*2+6)*1000
        //����ƶ�����SB����ɫ��
        If SB<4
        MoveTo 126+int(Rnd*4+1)+SB*122, 100+int(Rnd*4+1)
        Delay int(Rnd*3+2)*600
        MoveTo 126+int(Rnd*4+1)+SB*122, 100+int(Rnd*4+1)
        Delay int(Rnd*3+2)*600
        LeftDoubleClick 2
        Delay int(Rnd*3+1)*800
        MoveTo 126+int(Rnd*4+1)+SB*122, 100+int(Rnd*4+1)
        Delay int(Rnd*3+1)*600
        MoveTo 126+int(Rnd*4+1)+SB*122, 100+int(Rnd*4+1)
        Delay int(Rnd*3+1)*600
        LeftDoubleClick 2
        Delay int(Rnd*3+1)*600
        KeyPress "Space", 2
        Delay int(Rnd*3+1)*5000
        SB=SB+1
        Goto ��һλ
        Else
        //�ص������Ͻ�λ�õĽ�ɫ��
        MoveTo 126+int(Rnd*4+1), 100+int(Rnd*4+1)
        Delay int(Rnd*3+1)*500
        LeftDoubleClick 2
        Delay int(Rnd*3+1)*500
        MoveTo 126+int(Rnd*4+1), 100+int(Rnd*4+1)
        Delay int(Rnd*3+1)*500
        LeftDoubleClick 2
        Delay int(Rnd*3+1)*500
        KeyPress "Space", 2
        Delay int(Rnd*3+1)*5000
        SB=SB+1
        Goto ��һλ
        End If
    Else 
        KeyPress "F10", 1
        Delay int(Rnd*2+1)*2
    End If
End Sub
Sub je()  
   //���ֿ����������������ʱ�سǲ����½�ͼ
    IfColor 754, 557, "FFAA00", 0 Then
        Delay int(Rnd*2+2)*1000
        For 2
        KeyPress "Space", 1
        Delay int(Rnd*6+1)*5
        KeyPress "B", 1
        Delay int(Rnd*6+1)*5
        KeyPress "N", 1
        Delay int(Rnd*6+1)*5
        KeyPress "H", 1
        Delay int(Rnd*6+1)*5
        KeyPress "V", 1 //���＼��
        Delay int(Rnd*6+1)*5
        KeyPress "Y", 1
        Delay int(Rnd*6+1)*5
        KeyPress "U", 1
        Delay int(Rnd*6+1)*5
        KeyPress "I", 1
        Delay int(Rnd*6+1)*5
        KeyPress "O", 1
        Delay int(Rnd*6+1)*5
        KeyPress "X", 1 //�����
        Delay int(Rnd*6+1)*5
        KeyPress "P", 1
        Delay int(Rnd*6+1)*5
        KeyPress ";", 1
        Delay int(Rnd*6+1)*5
        KeyPress ",", 1
        Delay int(Rnd*6+1)*5
        KeyPress ".", 1
        Delay int(Rnd*6+1)*5
        Next
        //�ж��������˾ͷ��س���
        IfColor 754, 557, "FFAA00", 0 Then
            For 5
            Delay int(Rnd*5+1)*500
            KeyPress "Esc", 1
            Delay int(Rnd*3+1)*500
            MoveTo 480+int(Rnd*20+1), 440+int(Rnd*10+1)
            Delay int(Rnd*3+1)*500
            LeftClick 2
            Delay int(Rnd*3+1)*5000
            Next
        Delay int(Rnd*3*2)*5000
        //С�˽���ѡ���ɫ����
        Delay int(Rnd*3+1)*1000
            For 5
            KeyPress "Esc", 1
            Delay int(Rnd*2+1)*800
            FindCenterColor 370,430,400,460,"337799",xc,yc
            If xce>0 and yce>0 Then
            Delay int(Rnd*3+1)*200
            MoveTo xce, yce
            Delay int(Rnd*3+1)*600
            LeftClick 1
            Delay int(Rnd*3+2)*800
            MoveTo xce, yce
            Delay int(Rnd*3+2)*800
            LeftClick 1
            Delay int(Rnd*3+2)*800
            End If
        Next
        //��space�����ɫ����Ϸ
        For 2
        Delay int(Rnd*3+2)*5000
        KeyPress "Space", 2
        Delay int(Rnd*3+1)*5000
        Next
        //��ͷ��ʼִ�нű�
        Goto ��һλ
        End If
    End If
End Sub
Sub jm()  
    //��ʾ��Ʊ����ʱ�س�վ����ȡվ�ֻ����
    FindCenterColor 480,200,487,220,"0B1223",xm,ym
    If xm>0 and ym>0 Then
        KeyPress "Esc", 1
        Delay int(Rnd*3+1)*100
        KeyPress "Esc", 1
        Delay int(Rnd*3+1)*2000
        //��ȡվ�ֻ����
        zj=0
    While zj<4//1or4
        Delay 3500000*zj+int(Rnd*3000+1)
        MoveTo 211+int(Rnd*16+1), 114+int(Rnd*8+1)
        Delay int(Rnd*3+1)*300
        LeftClick 1
        Delay int(Rnd*3+1)*300
        MoveTo 262+int(Rnd*16+1), 114+int(Rnd*8+1)
        Delay int(Rnd*3+1)*300
        LeftClick 1
        Delay int(Rnd*3+1)*300
        MoveTo 315+int(Rnd*16+1), 114+int(Rnd*8+1)
        Delay int(Rnd*3+1)*300
        LeftClick 1
        Delay int(Rnd*3+1)*300
        MoveTo 366+int(Rnd*16+1), 114+int(Rnd*8+1)
        Delay int(Rnd*3+1)*300
        LeftClick 1
        Delay int(Rnd*3+1)*300
        MoveTo 366+int(Rnd*16+1), 114+int(Rnd*8+1)
        Delay int(Rnd*3+1)*300
        LeftClick 1
        Delay int(Rnd*3+1)*300
        zj=zj+1
    Wend
    Delay int(Rnd*3+1)*300
    KeyPress "Win", 1
    Delay int(Rnd*3+1)*300
    ExitScript
    End If
End Sub
