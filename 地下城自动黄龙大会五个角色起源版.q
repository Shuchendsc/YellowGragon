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
Description=地下城自动黄龙大会五个角色起源版
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
//在素楠地区赛利亚小屋站街开启
//找到dnf并移动到左上角
dnf=Plugin.Window.Find("地下城与勇士", "地下城与勇士")
SB=0
//站街点点屏幕
Rem 下一位
Call Plugin.Window.Move(dnf, 0, 0)
    Delay int(Rnd*8+2)*128+int(Rnd*256+1)
Call Plugin.Window.Active(dnf)
      MoveTo 450+int(Rnd*12+1), 2+int(Rnd*4+1)
//    Delay int(Rnd*256+800)
//    LeftClick 2
//    Delay int(Rnd*512+400)
//    LeftClick 2
    Delay int(Rnd*8+2)*128
//点掉系统菜单界面
//    MoveTo 592+int(Rnd*12+1), 124+int(Rnd*6+1)
//    Delay int(Rnd*200+2*300)
//    LeftClick 2
//    Delay int(Rnd*200+2*300)
//    LeftClick 2
//    Delay int(Rnd*200+2*300)
//通过按向下S键让角色走出赛利亚房间
Manna=1
For 12
        KeyPress "S", 4
        Delay int(Rnd*6+1)*128
Next
For int(Rnd*2+3)
    //按下地图R键打开地图要确保角色位于素楠地区
    KeyPress "R", 1 
    Delay int(Rnd*256+512)
    //在素楠地区进图
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
//左键点击黄龙图标
For 2
MoveTo 520+int(Rnd*15+1), 400+int(Rnd*15+1)
Delay int(Rnd*3+2)*256
LeftClick 1
Delay int(Rnd*3+2)*256
Next
//主循环体脸滚键盘打怪
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
    KeyPress "V", 1 //宠物技能
    Delay int(Rnd*3+1)*5
    KeyPress "Y", 1
    Delay int(Rnd*5+2)*3
    KeyPress "U", 1
    Delay int(Rnd*4+1)*5
    KeyPress "I", 1
    Delay int(Rnd*4+1)*5
    KeyPress "O", 1
    Delay int(Rnd*3+2)*3
    KeyPress "X", 1 //复活币
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
    //血量过低时吃键位1的药
    IfColor 270, 75, "0", 0 Then
        KeyPress "1", 1
    End If
    //物品栏被打开按ESC
    IfColor 483, 538, "ADFFFF", 0 Then
    KeyPress "F", 1
    Delay int(Rnd*2+1)*30
    End if
    //菜单被打开按ESC
    IfColor 368, 110, "77CCEE", 0 Then
    KeyPress "ESC", 1
    Delay int(Rnd*2+1)*30
    End if
    it=it+1
Wend
ExitScript
//怪物死后捡物品的子程序
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
        //图中间出现提示框时点空格
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
//打完继续或者回城交任务的子程序根据疲劳值进行判断
Sub jc()
//判断疲劳值。156满疲劳情况下，340表示0疲劳。360表示20疲劳。
IfColor 344+int(Rnd*6+1),553,"333333", 0 Then
//在疲劳值条低于阈值时，判断再次挑战对话框是否出现，若出现则回城，不出现继续挑战
    IfColor 619,62,"5F95B5", 0 Then
            KeyPress "F12", 1
            Delay int(Rnd*3+1)*100
            KeyPress "F12", 1
            Delay int(Rnd*3+1)*200
            KeyPress "F12", 1
            Delay int(Rnd*3+1)*500
            KeyPress "F12", 1
            Delay int(Rnd*50+10)*100
        //进入选择角色界面
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
        //鼠标移动到第SB个角色处
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
            Goto 下一位
            Else
            //回到最左上角位置的角色处
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
            Goto 下一位
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
//疲劳值未低于阈值，判断再次挑战是否为灰色，若灰色则回城，若不为则继续挑战
    IfColor 696,86,"808080", 0 Then
        KeyPress "F12", 1
        Delay int(Rnd*3+1)*128
        KeyPress "F12", 1
        Delay int(Rnd*3+1)*256
        KeyPress "F12", 1
        Delay int(Rnd*3+1)*512
        KeyPress "F12", 1
        Delay int(Rnd*2+2)*256
        //进入选择角色界面
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
        //鼠标移动到第SB个角色处
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
                Goto 下一位
                Else
                //回到最左上角位置的角色处
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
                Goto 下一位
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
    //出现卡死问题等蓝消耗完时回城并重新进图
    IfColor 748, 536, "222222", 0 Then
        //根据变量Manna判断出现蓝量减少的次数反映怪物是否卡死
        If Manna>256
        //如果判断出现蓝量减少次数超过256次，则在图内点开菜单回城
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
        //从头开始执行脚本
        Goto 下一位
        Else 
        Manna=Manna+1
        Delay int(Rnd*6+1)*122
        End If
    End If
End Sub
Sub jm()  
    //提示门票不足时回城站街领取站街活动奖励
    FindCenterColor 480,200,487,220,"0B1223",xm,ym
    //最终休止符
    If xm>0 and ym>0 Then
        KeyPress "Esc", 1
        Delay int(Rnd*3+1)*100
        KeyPress "Esc", 1
        Delay int(Rnd*3+1)*2000
        //领取站街活动奖励
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
