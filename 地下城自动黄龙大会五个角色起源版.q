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
MacroID=61fead86-5328-4f35-9558-d7039f791292
Description=���³��Զ�������������ɫ��Դ��
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
    Delay int(Rnd*8+2)*128+int(Rnd*256+1)
Call Plugin.Window.Active(dnf)
      MoveTo 450+int(Rnd*12+1), 2+int(Rnd*4+1)
//    Delay int(Rnd*256+800)
//    LeftClick 2
//    Delay int(Rnd*512+400)
//    LeftClick 2
    Delay int(Rnd*8+2)*128
//���ϵͳ�˵�����
//    MoveTo 592+int(Rnd*12+1), 124+int(Rnd*6+1)
//    Delay int(Rnd*200+2*300)
//    LeftClick 2
//    Delay int(Rnd*200+2*300)
//    LeftClick 2
//    Delay int(Rnd*200+2*300)
//ͨ��������S���ý�ɫ�߳������Ƿ���
Manna=1
For 12
        KeyPress "S", 4
        Delay int(Rnd*6+1)*128
Next
For int(Rnd*2+3)
    //���µ�ͼR���򿪵�ͼҪȷ����ɫλ����骵���
    KeyPress "R", 1 
    Delay int(Rnd*256+512)
    //����骵�����ͼ
        Delay int(Rnd*256+100)
        MoveTo 380+int(Rnd*12+1), 262+int(Rnd*5+1)
        Delay int(Rnd*256+256)
        LeftClick 2
        Delay int(Rnd*256+256)
        LeftClick 2
        Delay int(Rnd*1024+512)
Next
For 8
    KeyPress "S", 2
    Delay int(Rnd*6+1)*128
    KeyPress "D", 4
    Delay int(Rnd*6+1)*128
Next
//����������ͼ��
For 2
MoveTo 520+int(Rnd*15+1), 400+int(Rnd*15+1)
Delay int(Rnd*3+2)*256
LeftClick 1
Delay int(Rnd*3+2)*256
Next
//��ѭ�����������̴��
it=1
While it < 500000
    KeyPress "M", 1
    Delay int(Rnd*5+2)*2
    KeyPress "Space", 1
    Delay int(Rnd*8+5)
    KeyPress "B", 1
    Delay int(Rnd*6+3)*2
    KeyPress "N", 1
    Delay int(Rnd*5+1)*5
    KeyPress "H", 1
    Delay int(Rnd*4+2)*3
    KeyPress "J", 1
    Delay int(Rnd*4+1)*2
    KeyPress "V", 1 //���＼��
    Delay int(Rnd*3+1)*5
    KeyPress "Y", 1
    Delay int(Rnd*5+2)*3
    KeyPress "U", 1
    Delay int(Rnd*4+1)*5
    KeyPress "I", 1
    Delay int(Rnd*4+1)*5
    KeyPress "O", 1
    Delay int(Rnd*3+2)*3
    KeyPress "X", 1 //�����
    Delay int(Rnd*3+2)*2
    KeyPress "P", 1 
    Delay int(Rnd*5+1)*5
    KeyPress ";", 1
    Delay int(Rnd*4+2)*3
    KeyPress ",", 1
    Delay int(Rnd*3+2)*2
    KeyPress ".", 1
    Delay int(Rnd*6+1)*3
    Call jx()
    Call jc()
    Call je()
    Call jm()
    //Ѫ������ʱ�Լ�λ1��ҩ
    IfColor 270, 75, "0", 0 Then
        KeyPress "1", 1
    End If
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
//    MoveTo 450+int(Rnd*12+1), 2+int(Rnd*4+1)
//    Delay int(Rnd*64+80)
//    LeftClick 1
    Call Plugin.Window.Active(dnf)
    Delay int(Rnd*2+1)*3
    IfColor 472,77,"0",0 Then
        Delay int(Rnd*66+1802)
      //KeyPress "Q", 1
      //Delay int(Rnd*3+2)*500
        KeyPress "E", 1
        Delay int(Rnd*68+800)
        //ͼ�м������ʾ��ʱ��ո�
        FindCenterColor 370,320,430,346,"FFFF63",xk,yk
          If xk>0 and yk>0 Then
          Delay int(Rnd*68+88)
          KeyPress "Space", 1
        End If
        For 11
        KeyPress "K", 1
        Delay int(Rnd*66+256)
        Next
    End If
End Sub
//����������߻سǽ�������ӳ������ƣ��ֵ�����ж�
Sub jc()
//�ж�ƣ��ֵ��156��ƣ������£�340��ʾ0ƣ�͡�360��ʾ20ƣ�͡�
IfColor 344+int(Rnd*6+1),553,"333333", 0 Then
//��ƣ��ֵ��������ֵʱ���ж��ٴ���ս�Ի����Ƿ���֣���������سǣ������ּ�����ս
    IfColor 619,62,"5F95B5", 0 Then
            KeyPress "F12", 1
            Delay int(Rnd*3+1)*100
            KeyPress "F12", 1
            Delay int(Rnd*3+1)*200
            KeyPress "F12", 1
            Delay int(Rnd*3+1)*500
            KeyPress "F12", 1
            Delay int(Rnd*50+10)*100
        //����ѡ���ɫ����
        Delay int(Rnd*8+6)*200
        For 5
        KeyPress "Esc", 1
        Delay int(Rnd*7+2)*400
//      FindCenterColor 360,420,480,460,"3B7F9E",xc,yc
//          If xc>0 and yc>0 Then
            Delay int(Rnd*3+3)*200
            MoveTo 385, 447
            Delay int(Rnd*3+3)*600
            LeftClick 1
            Delay int(Rnd*3+3)*900
            MoveTo 385, 447
            Delay int(Rnd*3+3)*900
            LeftClick 1
            Delay int(Rnd*3+2)*800
//          End If
        Next
            Delay int(Rnd*2+6)*600
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
            Delay int(Rnd*10+15)*500
            SB=SB+1
            Delay int(Rnd*3000+2000)
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
            Delay int(Rnd*3+2)*5000
            SB=SB+1
            Delay int(Rnd*3000+2000)
            Goto ��һλ
            End If
    Else
        KeyPress "F10", 1
        Delay int(Rnd*2+1)*20
        KeyPress "F10", 1
        Delay int(Rnd*2+1)*20
        KeyPress "F10", 1
        Delay int(Rnd*2+1)*20
    End If
Else
//ƣ��ֵδ������ֵ���ж��ٴ���ս�Ƿ�Ϊ��ɫ������ɫ��سǣ�����Ϊ�������ս
    IfColor 696,86,"808080", 0 Then
        KeyPress "F12", 1
        Delay int(Rnd*3+1)*128
        KeyPress "F12", 1
        Delay int(Rnd*3+1)*256
        KeyPress "F12", 1
        Delay int(Rnd*3+1)*512
        KeyPress "F12", 1
        Delay int(Rnd*2+2)*256
        //����ѡ���ɫ����
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
                Delay int(Rnd*10+15)*500
                SB=SB+1
                Delay int(Rnd*3000+2000)
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
                Delay int(Rnd*3+2)*5000
                SB=SB+1
                Delay int(Rnd*3000+2000)
                Goto ��һλ
                End If
    Else
        KeyPress "F10", 1
        Delay int(Rnd*4+1)*12
        KeyPress "F10", 1
        Delay int(Rnd*5+1)*8
        KeyPress "F10", 1
        Delay int(Rnd*3+1)*16
    End If
End If
End Sub
Sub je()  
    //���ֿ����������������ʱ�سǲ����½�ͼ
    IfColor 748, 536, "222222", 0 Then
        //���ݱ���Manna�жϳ����������ٵĴ�����ӳ�����Ƿ���
        If Manna>256
        //����жϳ����������ٴ�������256�Σ�����ͼ�ڵ㿪�˵��س�
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
        //��ͷ��ʼִ�нű�
        Goto ��һλ
        Else 
        Manna=Manna+1
        Delay int(Rnd*6+1)*122
        End If
    End If
End Sub
Sub jm()  
    //��ʾ��Ʊ����ʱ�س�վ����ȡվ�ֻ����
    FindCenterColor 480,200,487,220,"0B1223",xm,ym
    //������ֹ��
    If xm>0 and ym>0 Then
        KeyPress "Esc", 1
        Delay int(Rnd*3+1)*100
        KeyPress "Esc", 1
        Delay int(Rnd*3+1)*2000
        //��ȡվ�ֻ����
        zj=0
    While zj<1//1or4
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
