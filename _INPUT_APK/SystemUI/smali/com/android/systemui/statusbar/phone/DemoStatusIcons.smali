.class public Lcom/android/systemui/statusbar/phone/DemoStatusIcons;
.super Landroid/widget/LinearLayout;
.source "DemoStatusIcons.java"

# interfaces
.implements Lcom/android/systemui/DemoMode;


# instance fields
.field private mDemoMode:Z

.field private final mIconSize:I

.field private final mStatusIcons:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;I)V
    .locals 2
    .param p1, "statusIcons"    # Landroid/widget/LinearLayout;
    .param p2, "iconSize"    # I

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 41
    iput p2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    .line 43
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setOrientation(I)V

    .line 45
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setGravity(I)V

    .line 46
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 47
    .local v0, "p":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 48
    return-void
.end method

.method private updateSlot(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconPkg"    # Ljava/lang/String;
    .param p3, "iconId"    # I

    .prologue
    const/4 v4, 0x0

    .line 132
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-nez v1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 133
    :cond_0
    const/4 v8, -0x1

    .line 134
    .local v8, "removeIndex":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getChildCount()I

    move-result v1

    if-ge v7, v1, :cond_1

    .line 135
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 136
    .local v9, "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 137
    if-nez p3, :cond_2

    .line 138
    move v8, v7

    .line 150
    .end local v9    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_1
    if-nez p3, :cond_4

    .line 151
    const/4 v1, -0x1

    if-eq v8, v1, :cond_4

    .line 152
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->removeViewAt(I)V

    goto :goto_0

    .line 141
    .restart local v9    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_2
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    .line 142
    .local v0, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    iput-object p2, v0, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    .line 143
    iput p3, v0, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    .line 144
    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 145
    invoke-virtual {v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->updateDrawable()V

    goto :goto_0

    .line 134
    .end local v0    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 156
    .end local v9    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_4
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v6, "Demo"

    move-object v1, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 157
    .restart local v0    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    new-instance v9, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v9, v1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 158
    .restart local v9    # "v":Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v9, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setTag(Ljava/lang/Object;)V

    .line 159
    invoke-virtual {v9, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 160
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mIconSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v9, v4, v1}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 15
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 52
    iget-boolean v13, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-nez v13, :cond_1

    const-string v13, "enter"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 53
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    .line 54
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 55
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setVisibility(I)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-boolean v13, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-eqz v13, :cond_2

    const-string v13, "exit"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 57
    const/4 v13, 0x0

    iput-boolean v13, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    .line 58
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 59
    const/16 v13, 0x8

    invoke-virtual {p0, v13}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->setVisibility(I)V

    goto :goto_0

    .line 60
    :cond_2
    iget-boolean v13, p0, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-eqz v13, :cond_0

    const-string v13, "status"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 61
    const-string v13, "volume"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 62
    .local v11, "volume":Ljava/lang/String;
    if-eqz v11, :cond_3

    .line 63
    const-string v13, "vibrate"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    const v5, 0x7f0203e0

    .line 65
    .local v5, "iconId":I
    :goto_1
    const-string v13, "volume"

    const/4 v14, 0x0

    invoke-direct {p0, v13, v14, v5}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    .end local v5    # "iconId":I
    :cond_3
    const-string v13, "zen"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 68
    .local v12, "zen":Ljava/lang/String;
    if-eqz v12, :cond_4

    .line 69
    const-string v13, "important"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    const v5, 0x7f02051a

    .line 72
    .restart local v5    # "iconId":I
    :goto_2
    const-string v13, "zen"

    const/4 v14, 0x0

    invoke-direct {p0, v13, v14, v5}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    .end local v5    # "iconId":I
    :cond_4
    const-string v13, "bluetooth"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, "bt":Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 76
    const-string v13, "disconnected"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    const v5, 0x7f0202f8

    .line 79
    .restart local v5    # "iconId":I
    :goto_3
    const-string v13, "bluetooth"

    const/4 v14, 0x0

    invoke-direct {p0, v13, v14, v5}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    .end local v5    # "iconId":I
    :cond_5
    const-string v13, "location"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 82
    .local v6, "location":Ljava/lang/String;
    if-eqz v6, :cond_6

    .line 83
    const-string v13, "show"

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    const v5, 0x7f020385

    .line 85
    .restart local v5    # "iconId":I
    :goto_4
    const-string v13, "location"

    const/4 v14, 0x0

    invoke-direct {p0, v13, v14, v5}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    .end local v5    # "iconId":I
    :cond_6
    const-string v13, "alarm"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "alarm":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 89
    const-string v13, "show"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    const v5, 0x7f0202e1

    .line 91
    .restart local v5    # "iconId":I
    :goto_5
    const-string v13, "alarm_clock"

    const/4 v14, 0x0

    invoke-direct {p0, v13, v14, v5}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    .end local v5    # "iconId":I
    :cond_7
    const-string v13, "sync"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 94
    .local v9, "sync":Ljava/lang/String;
    if-eqz v9, :cond_8

    .line 95
    const-string v13, "show"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    const v5, 0x7f0204f8

    .line 97
    .restart local v5    # "iconId":I
    :goto_6
    const-string v13, "sync_active"

    const/4 v14, 0x0

    invoke-direct {p0, v13, v14, v5}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    .end local v5    # "iconId":I
    :cond_8
    const-string v13, "tty"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 100
    .local v10, "tty":Ljava/lang/String;
    if-eqz v10, :cond_9

    .line 101
    const-string v13, "show"

    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    const v5, 0x7f0204f9

    .line 103
    .restart local v5    # "iconId":I
    :goto_7
    const-string v13, "tty"

    const/4 v14, 0x0

    invoke-direct {p0, v13, v14, v5}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    .end local v5    # "iconId":I
    :cond_9
    const-string v13, "eri"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 106
    .local v4, "eri":Ljava/lang/String;
    if-eqz v4, :cond_a

    .line 107
    const-string v13, "show"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_16

    const v5, 0x7f0203e1

    .line 109
    .restart local v5    # "iconId":I
    :goto_8
    const-string v13, "cdma_eri"

    const/4 v14, 0x0

    invoke-direct {p0, v13, v14, v5}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    .end local v5    # "iconId":I
    :cond_a
    const-string v13, "mute"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 112
    .local v7, "mute":Ljava/lang/String;
    if-eqz v7, :cond_b

    .line 113
    const-string v13, "show"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_17

    const v5, 0x1080076

    .line 115
    .restart local v5    # "iconId":I
    :goto_9
    const-string v13, "mute"

    const/4 v14, 0x0

    invoke-direct {p0, v13, v14, v5}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    .end local v5    # "iconId":I
    :cond_b
    const-string v13, "speakerphone"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 118
    .local v8, "speakerphone":Ljava/lang/String;
    if-eqz v8, :cond_c

    .line 119
    const-string v13, "show"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    const v5, 0x1080087

    .line 121
    .restart local v5    # "iconId":I
    :goto_a
    const-string v13, "speakerphone"

    const/4 v14, 0x0

    invoke-direct {p0, v13, v14, v5}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    .end local v5    # "iconId":I
    :cond_c
    const-string v13, "cast"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "cast":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 125
    const-string v13, "cast"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    const v5, 0x7f0202e3

    .line 126
    .restart local v5    # "iconId":I
    :goto_b
    const-string v13, "cast"

    const/4 v14, 0x0

    invoke-direct {p0, v13, v14, v5}, Lcom/android/systemui/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 63
    .end local v1    # "alarm":Ljava/lang/String;
    .end local v2    # "bt":Ljava/lang/String;
    .end local v3    # "cast":Ljava/lang/String;
    .end local v4    # "eri":Ljava/lang/String;
    .end local v5    # "iconId":I
    .end local v6    # "location":Ljava/lang/String;
    .end local v7    # "mute":Ljava/lang/String;
    .end local v8    # "speakerphone":Ljava/lang/String;
    .end local v9    # "sync":Ljava/lang/String;
    .end local v10    # "tty":Ljava/lang/String;
    .end local v12    # "zen":Ljava/lang/String;
    :cond_d
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 69
    .restart local v12    # "zen":Ljava/lang/String;
    :cond_e
    const-string v13, "none"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    const v5, 0x7f02051b

    goto/16 :goto_2

    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 76
    .restart local v2    # "bt":Ljava/lang/String;
    :cond_10
    const-string v13, "connected"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    const v5, 0x7f0202f9

    goto/16 :goto_3

    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 83
    .restart local v6    # "location":Ljava/lang/String;
    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 89
    .restart local v1    # "alarm":Ljava/lang/String;
    :cond_13
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 95
    .restart local v9    # "sync":Ljava/lang/String;
    :cond_14
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 101
    .restart local v10    # "tty":Ljava/lang/String;
    :cond_15
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 107
    .restart local v4    # "eri":Ljava/lang/String;
    :cond_16
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 113
    .restart local v7    # "mute":Ljava/lang/String;
    :cond_17
    const/4 v5, 0x0

    goto :goto_9

    .line 119
    .restart local v8    # "speakerphone":Ljava/lang/String;
    :cond_18
    const/4 v5, 0x0

    goto :goto_a

    .line 125
    .restart local v3    # "cast":Ljava/lang/String;
    :cond_19
    const/4 v5, 0x0

    goto :goto_b
.end method
