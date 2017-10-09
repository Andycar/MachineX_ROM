.class public Lcom/android/settings/motion2013/MotionSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MotionSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final isKnoxUser:Z


# instance fields
.field private isGoIntoQuideHub:Z

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mArcMotionMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

.field private mArcMotionQuickGlance:Landroid/preference/SwitchPreferenceScreen;

.field private mArcMotionRippleEffect:Landroid/preference/SwitchPreferenceScreen;

.field private mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

.field private final mMotionObserver:Landroid/database/ContentObserver;

.field private mMotionUnlockDialog:Landroid/app/AlertDialog;

.field private mPan:Landroid/preference/SwitchPreferenceScreen;

.field private mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

.field private mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

.field private mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

.field private mPickUp:Landroid/preference/SwitchPreferenceScreen;

.field private mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

.field private mResolver:Landroid/content/ContentResolver;

.field private mShake:Landroid/preference/SwitchPreferenceScreen;

.field private mSupportBrowser:Z

.field private mTilt:Landroid/preference/SwitchPreferenceScreen;

.field private mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

.field private mTurnOver:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 74
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/settings/motion2013/MotionSettings;->isKnoxUser:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/motion2013/MotionSettings;->isGoIntoQuideHub:Z

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 102
    new-instance v0, Lcom/android/settings/motion2013/MotionSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/motion2013/MotionSettings$1;-><init>(Lcom/android/settings/motion2013/MotionSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mMotionObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion2013/MotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/MotionSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion2013/MotionSettings;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/motion2013/MotionSettings;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private broadcastArcMotionQuickGlanceChanged(Z)V
    .locals 4
    .param p1, "isEnable"    # Z

    .prologue
    .line 596
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.ARC_MOTION_QUICK_GLANCE_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 597
    .local v0, "motion_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 598
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 599
    const-string v1, "MotionsSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastArcMotionQuickGlanceChanged : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    return-void
.end method

.method public static isAllOptionDisabled(Landroid/content/ContentResolver;Landroid/content/Context;)Z
    .locals 21
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 521
    const/16 v19, 0x0

    invoke-static/range {v19 .. v19}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    .line 522
    .local v8, "isTablet":Z
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v9

    .line 524
    .local v9, "isVoiceCapable":Z
    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TILT"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    const-string v19, "motion_zooming"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 526
    .local v17, "tiltZoom":I
    :goto_0
    const/16 v16, 0x0

    .line 528
    .local v16, "tiltScroll":I
    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PAN"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_1

    const-string v19, "motion_panning"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 530
    .local v11, "panMove":I
    :goto_1
    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PAN_TO_BROWSE_IMAGE"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    const-string v19, "motion_pan_to_browse_image"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 532
    .local v10, "panBrowse":I
    :goto_2
    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_SHAKE"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    if-nez v8, :cond_3

    const-string v19, "motion_shake"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 534
    .local v14, "shake":I
    :goto_3
    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_DOUBLE_TAP"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_4

    if-nez v8, :cond_4

    const-string v19, "motion_double_tap"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 536
    .local v7, "doubleTap":I
    :goto_4
    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    if-eqz v9, :cond_5

    const-string v19, "motion_pick_up"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 538
    .local v15, "smartAlert":I
    :goto_5
    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP_TO_CALL_OUT"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    if-nez v8, :cond_6

    sget-boolean v19, Lcom/android/settings/motion2013/MotionSettings;->isKnoxUser:Z

    if-nez v19, :cond_6

    const-string v19, "motion_pick_up_to_call_out"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 540
    .local v6, "directCall":I
    :goto_6
    const-string v19, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-static/range {v19 .. v19}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    if-nez v8, :cond_7

    sget-boolean v19, Lcom/android/settings/motion2013/MotionSettings;->isKnoxUser:Z

    if-nez v19, :cond_7

    const-string v19, "motion_overturn"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    .line 542
    .local v18, "turnover":I
    :goto_7
    const/4 v5, 0x0

    .line 544
    .local v5, "ArcMotionRippleEffect":I
    const/4 v4, 0x0

    .line 546
    .local v4, "ArcMotionQuickGlance":I
    const/4 v3, 0x0

    .line 548
    .local v3, "ArcMotionMusicPlayback":I
    const/4 v13, 0x0

    .line 550
    .local v13, "peekViewAlbumsList":I
    const/4 v12, 0x0

    .line 553
    .local v12, "peekChapterPreview":I
    or-int v19, v17, v16

    or-int v19, v19, v11

    or-int v19, v19, v10

    or-int v19, v19, v14

    or-int v19, v19, v7

    or-int v19, v19, v15

    or-int v19, v19, v6

    or-int v19, v19, v18

    or-int v19, v19, v5

    or-int v19, v19, v4

    or-int v19, v19, v3

    or-int v19, v19, v13

    or-int v19, v19, v12

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_8

    const/16 v19, 0x1

    :goto_8
    return v19

    .line 524
    .end local v3    # "ArcMotionMusicPlayback":I
    .end local v4    # "ArcMotionQuickGlance":I
    .end local v5    # "ArcMotionRippleEffect":I
    .end local v6    # "directCall":I
    .end local v7    # "doubleTap":I
    .end local v10    # "panBrowse":I
    .end local v11    # "panMove":I
    .end local v12    # "peekChapterPreview":I
    .end local v13    # "peekViewAlbumsList":I
    .end local v14    # "shake":I
    .end local v15    # "smartAlert":I
    .end local v16    # "tiltScroll":I
    .end local v17    # "tiltZoom":I
    .end local v18    # "turnover":I
    :cond_0
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 528
    .restart local v16    # "tiltScroll":I
    .restart local v17    # "tiltZoom":I
    :cond_1
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 530
    .restart local v11    # "panMove":I
    :cond_2
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 532
    .restart local v10    # "panBrowse":I
    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 534
    .restart local v14    # "shake":I
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 536
    .restart local v7    # "doubleTap":I
    :cond_5
    const/4 v15, 0x0

    goto :goto_5

    .line 538
    .restart local v15    # "smartAlert":I
    :cond_6
    const/4 v6, 0x0

    goto :goto_6

    .line 540
    .restart local v6    # "directCall":I
    :cond_7
    const/16 v18, 0x0

    goto :goto_7

    .line 553
    .restart local v3    # "ArcMotionMusicPlayback":I
    .restart local v4    # "ArcMotionQuickGlance":I
    .restart local v5    # "ArcMotionRippleEffect":I
    .restart local v12    # "peekChapterPreview":I
    .restart local v13    # "peekViewAlbumsList":I
    .restart local v18    # "turnover":I
    :cond_8
    const/16 v19, 0x0

    goto :goto_8
.end method


# virtual methods
.method public isAllMotionDisabled()Z
    .locals 21

    .prologue
    .line 558
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 559
    const/16 v18, 0x0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    .line 560
    .local v7, "isTablet":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v8

    .line 562
    .local v8, "isVoiceCapable":Z
    const-string v18, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TILT"

    invoke-static/range {v18 .. v18}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "motion_zooming"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 564
    .local v16, "tiltZoom":I
    :goto_0
    const/4 v15, 0x0

    .line 566
    .local v15, "tiltScroll":I
    const-string v18, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PAN"

    invoke-static/range {v18 .. v18}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    const-string v18, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v18 .. v18}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "motion_panning"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 568
    .local v10, "panMove":I
    :goto_1
    const-string v18, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PAN_TO_BROWSE_IMAGE"

    invoke-static/range {v18 .. v18}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "motion_pan_to_browse_image"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 570
    .local v9, "panBrowse":I
    :goto_2
    const-string v18, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_SHAKE"

    invoke-static/range {v18 .. v18}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "motion_shake"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 572
    .local v13, "shake":I
    :goto_3
    const-string v18, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_DOUBLE_TAP"

    invoke-static/range {v18 .. v18}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    const-string v18, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static/range {v18 .. v18}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_4

    if-nez v7, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "motion_double_tap"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 574
    .local v6, "doubleTap":I
    :goto_4
    const-string v18, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP"

    invoke-static/range {v18 .. v18}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    if-eqz v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "motion_pick_up"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    .line 576
    .local v14, "smartAlert":I
    :goto_5
    const-string v18, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP_TO_CALL_OUT"

    invoke-static/range {v18 .. v18}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    if-nez v7, :cond_6

    sget-boolean v18, Lcom/android/settings/motion2013/MotionSettings;->isKnoxUser:Z

    if-nez v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "motion_pick_up_to_call_out"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 578
    .local v5, "directCall":I
    :goto_6
    const-string v18, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-static/range {v18 .. v18}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_7

    if-nez v7, :cond_7

    sget-boolean v18, Lcom/android/settings/motion2013/MotionSettings;->isKnoxUser:Z

    if-nez v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v18, v0

    const-string v19, "motion_overturn"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 580
    .local v17, "turnover":I
    :goto_7
    const/4 v4, 0x0

    .line 582
    .local v4, "ArcMotionRippleEffect":I
    const/4 v3, 0x0

    .line 584
    .local v3, "ArcMotionQuickGlance":I
    const/4 v2, 0x0

    .line 586
    .local v2, "ArcMotionMusicPlayback":I
    const/4 v12, 0x0

    .line 588
    .local v12, "peekViewAlbumsList":I
    const/4 v11, 0x0

    .line 591
    .local v11, "peekChapterPreview":I
    or-int v18, v16, v15

    or-int v18, v18, v10

    or-int v18, v18, v9

    or-int v18, v18, v13

    or-int v18, v18, v6

    or-int v18, v18, v14

    or-int v18, v18, v5

    or-int v18, v18, v17

    or-int v18, v18, v4

    or-int v18, v18, v3

    or-int v18, v18, v2

    or-int v18, v18, v12

    or-int v18, v18, v11

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    const/16 v18, 0x1

    :goto_8
    return v18

    .line 562
    .end local v2    # "ArcMotionMusicPlayback":I
    .end local v3    # "ArcMotionQuickGlance":I
    .end local v4    # "ArcMotionRippleEffect":I
    .end local v5    # "directCall":I
    .end local v6    # "doubleTap":I
    .end local v9    # "panBrowse":I
    .end local v10    # "panMove":I
    .end local v11    # "peekChapterPreview":I
    .end local v12    # "peekViewAlbumsList":I
    .end local v13    # "shake":I
    .end local v14    # "smartAlert":I
    .end local v15    # "tiltScroll":I
    .end local v16    # "tiltZoom":I
    .end local v17    # "turnover":I
    :cond_0
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 566
    .restart local v15    # "tiltScroll":I
    .restart local v16    # "tiltZoom":I
    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 568
    .restart local v10    # "panMove":I
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 570
    .restart local v9    # "panBrowse":I
    :cond_3
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 572
    .restart local v13    # "shake":I
    :cond_4
    const/4 v6, 0x0

    goto/16 :goto_4

    .line 574
    .restart local v6    # "doubleTap":I
    :cond_5
    const/4 v14, 0x0

    goto :goto_5

    .line 576
    .restart local v14    # "smartAlert":I
    :cond_6
    const/4 v5, 0x0

    goto :goto_6

    .line 578
    .restart local v5    # "directCall":I
    :cond_7
    const/16 v17, 0x0

    goto :goto_7

    .line 591
    .restart local v2    # "ArcMotionMusicPlayback":I
    .restart local v3    # "ArcMotionQuickGlance":I
    .restart local v4    # "ArcMotionRippleEffect":I
    .restart local v11    # "peekChapterPreview":I
    .restart local v12    # "peekViewAlbumsList":I
    .restart local v17    # "turnover":I
    :cond_8
    const/16 v18, 0x0

    goto :goto_8
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 282
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/android/settings/motion2013/MotionSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/motion2013/MotionSettings$2;-><init>(Lcom/android/settings/motion2013/MotionSettings;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 306
    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "desiredState"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 441
    if-eqz p2, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 449
    :goto_0
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 450
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 451
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "easy_mode_switch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 452
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 456
    :goto_1
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 457
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 458
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 459
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 460
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 461
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 462
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionRippleEffect:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 463
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 464
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 465
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 466
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 467
    invoke-direct {p0, p2}, Lcom/android/settings/motion2013/MotionSettings;->broadcastArcMotionQuickGlanceChanged(Z)V

    .line 468
    return-void

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    goto :goto_0

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p2}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 17
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 112
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->setHasOptionsMenu(Z)V

    .line 115
    const v14, 0x7f070078

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->addPreferencesFromResource(I)V

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    .line 118
    new-instance v14, Landroid/widget/Switch;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v14, v15}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 119
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 121
    const-string v14, "tilt"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    .line 122
    const-string v14, "tilt_to_scroll_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    .line 123
    const-string v14, "pan"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    .line 124
    const-string v14, "pan_to_browse_image"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    .line 125
    const-string v14, "shake"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    .line 126
    const-string v14, "double_tap"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    .line 127
    const-string v14, "pick_up"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    .line 128
    const-string v14, "pick_up_to_call_out"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    .line 129
    const-string v14, "turn_over"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    .line 130
    const-string v14, "arc_motion_ripple_effect"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionRippleEffect:Landroid/preference/SwitchPreferenceScreen;

    .line 131
    const-string v14, "arc_motion_quick_glance"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    .line 132
    const-string v14, "arc_motion_music_playback"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

    .line 133
    const-string v14, "peek_view_albums_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    .line 134
    const-string v14, "peek_chapter_preview"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    .line 137
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 138
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 142
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 146
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionRippleEffect:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 147
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 149
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 150
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/MotionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 154
    .local v5, "ps":Landroid/preference/PreferenceScreen;
    const/4 v14, 0x0

    invoke-static {v14}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    .line 156
    .local v2, "isTablet":Z
    const/4 v8, 0x0

    .line 157
    .local v8, "removeTiltCategory":I
    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TILT"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 158
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 159
    add-int/lit8 v8, v8, 0x1

    .line 162
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 163
    add-int/lit8 v8, v8, 0x1

    .line 165
    const/4 v14, 0x1

    if-le v8, v14, :cond_1

    .line 166
    const-string v14, "tilt_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceCategory;

    .line 167
    .local v11, "tiltCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual {v5, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 170
    .end local v11    # "tiltCategory":Landroid/preference/PreferenceCategory;
    :cond_1
    const/4 v6, 0x0

    .line 172
    .local v6, "removePanCategory":I
    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PAN"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    const/4 v14, 0x0

    invoke-static {v14}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 173
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 174
    add-int/lit8 v6, v6, 0x1

    .line 176
    :cond_3
    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PAN_TO_BROWSE_IMAGE"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 177
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 178
    add-int/lit8 v6, v6, 0x1

    .line 180
    :cond_4
    const/4 v14, 0x1

    if-le v6, v14, :cond_5

    .line 181
    const-string v14, "pan_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 182
    .local v3, "panCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 185
    .end local v3    # "panCategory":Landroid/preference/PreferenceCategory;
    :cond_5
    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_SHAKE"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    if-eqz v2, :cond_7

    .line 186
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    const-string v14, "shake_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceCategory;

    .line 188
    .local v9, "shakeCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual {v5, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    .end local v9    # "shakeCategory":Landroid/preference/PreferenceCategory;
    :cond_7
    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_DOUBLE_TAP"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AIR_MOTION"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8

    if-eqz v2, :cond_9

    .line 192
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 195
    :cond_9
    const/4 v7, 0x0

    .line 196
    .local v7, "removePickupCategory":I
    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_b

    .line 197
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 198
    add-int/lit8 v7, v7, 0x1

    .line 200
    :cond_b
    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_PICK_UP_TO_CALL_OUT"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_c

    if-nez v2, :cond_c

    sget-boolean v14, Lcom/android/settings/motion2013/MotionSettings;->isKnoxUser:Z

    if-eqz v14, :cond_d

    .line 201
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 202
    add-int/lit8 v7, v7, 0x1

    .line 204
    :cond_d
    const/4 v14, 0x1

    if-le v7, v14, :cond_e

    .line 205
    const-string v14, "pick_up_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 206
    .local v4, "pickupCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 209
    .end local v4    # "pickupCategory":Landroid/preference/PreferenceCategory;
    :cond_e
    const-string v14, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_MOTION_TRUN_OVER"

    invoke-static {v14}, Lcom/android/settings/feature/Feature$Floating;->getEnableStatus(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    if-nez v2, :cond_f

    sget-boolean v14, Lcom/android/settings/motion2013/MotionSettings;->isKnoxUser:Z

    if-eqz v14, :cond_10

    .line 210
    :cond_f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 211
    const-string v14, "turn_over_category"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/motion2013/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/PreferenceCategory;

    .line 212
    .local v12, "turnoverCategory":Landroid/preference/PreferenceCategory;
    invoke-virtual {v5, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 216
    .end local v12    # "turnoverCategory":Landroid/preference/PreferenceCategory;
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionRippleEffect:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 217
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 218
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 222
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 225
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v14}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "com.android.browser"

    invoke-static {v14, v15}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mSupportBrowser:Z

    .line 236
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mSupportBrowser:Z

    if-nez v14, :cond_11

    .line 237
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    const v15, 0x7f0a1212

    invoke-virtual {v14, v15}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 241
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mOpenDetailMenu:Z

    if-eqz v14, :cond_12

    sget v14, Lcom/android/settings/motion2013/MotionSettings;->mSettingValue:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "master_motion"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-eqz v14, :cond_12

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/motion2013/MotionSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 244
    .local v1, "extra_bundle":Landroid/os/Bundle;
    const-string v14, "extra_parent_preference_key"

    invoke-virtual {v1, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 245
    .local v10, "targetKey":Ljava/lang/String;
    sget v14, Lcom/android/settings/motion2013/MotionSettings;->mSettingValue:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_13

    const/4 v13, 0x1

    .line 246
    .local v13, "value":Z
    :goto_0
    const-string v14, "tilt"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 247
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 248
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 278
    .end local v1    # "extra_bundle":Landroid/os/Bundle;
    .end local v10    # "targetKey":Ljava/lang/String;
    .end local v13    # "value":Z
    :cond_12
    :goto_1
    return-void

    .line 245
    .restart local v1    # "extra_bundle":Landroid/os/Bundle;
    .restart local v10    # "targetKey":Ljava/lang/String;
    :cond_13
    const/4 v13, 0x0

    goto :goto_0

    .line 249
    .restart local v13    # "value":Z
    :cond_14
    const-string v14, "tilt_to_scroll_list"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 250
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 251
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 252
    :cond_15
    const-string v14, "pan"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 253
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 254
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 255
    :cond_16
    const-string v14, "pan_to_browse_image"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 256
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 257
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 258
    :cond_17
    const-string v14, "shake"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 259
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 260
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto :goto_1

    .line 261
    :cond_18
    const-string v14, "double_tap"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 262
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 263
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 264
    :cond_19
    const-string v14, "pick_up"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 265
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 266
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 267
    :cond_1a
    const-string v14, "pick_up_to_call_out"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 268
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 269
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 270
    :cond_1b
    const-string v14, "turn_over"

    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 271
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v14, v13}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 272
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/settings/motion2013/MotionSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 417
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 419
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportHelpMenu(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 420
    const/4 v0, 0x1

    const v1, 0x7f0a0e97

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0201f0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 424
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 428
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 435
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 430
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.helphub.HELP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 431
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "helphub:section"

    const-string v2, "motion"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 433
    const/4 v1, 0x1

    goto :goto_0

    .line 428
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 391
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 393
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/motion2013/MotionSettings;->mMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 395
    iget-boolean v0, p0, Lcom/android/settings/motion2013/MotionSettings;->isGoIntoQuideHub:Z

    if-nez v0, :cond_0

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->isAllMotionDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a11ff

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_motion"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 399
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    .line 400
    iget-object v0, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 401
    invoke-direct {p0, v2}, Lcom/android/settings/motion2013/MotionSettings;->broadcastArcMotionQuickGlanceChanged(Z)V

    .line 404
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "objValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 477
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 478
    .local v0, "key":Ljava/lang/String;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "objValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 479
    .local v1, "value":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_3

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_zooming"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 510
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->isAllMotionDisabled()Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_1

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "master_motion"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 512
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->autoTurnOffMotionEngine(Landroid/content/Context;)V

    .line 513
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 514
    invoke-direct {p0, v3}, Lcom/android/settings/motion2013/MotionSettings;->broadcastArcMotionQuickGlanceChanged(Z)V

    .line 517
    :cond_1
    return v2

    .end local v1    # "value":I
    :cond_2
    move v1, v3

    .line 478
    goto :goto_0

    .line 481
    .restart local v1    # "value":I
    :cond_3
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_4

    .line 482
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_tilt_to_list_scrolling"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 483
    :cond_4
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_5

    .line 484
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_panning"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 485
    :cond_5
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_6

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_pan_to_browse_image"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 487
    :cond_6
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_7

    .line 488
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_shake"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 489
    :cond_7
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_8

    .line 490
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_double_tap"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 491
    :cond_8
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_9

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_pick_up"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 493
    :cond_9
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_a

    .line 494
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_pick_up_to_call_out"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 495
    :cond_a
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_b

    .line 496
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_overturn"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 497
    :cond_b
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionRippleEffect:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_c

    .line 498
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "arc_motion_ripple_effect"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 499
    :cond_c
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_e

    .line 500
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "arc_motion_quick_glance"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 501
    if-ne v1, v2, :cond_d

    move v4, v2

    :goto_2
    invoke-direct {p0, v4}, Lcom/android/settings/motion2013/MotionSettings;->broadcastArcMotionQuickGlanceChanged(Z)V

    goto/16 :goto_1

    :cond_d
    move v4, v3

    goto :goto_2

    .line 502
    :cond_e
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_f

    .line 503
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "arc_motion_music_playback"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 504
    :cond_f
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_10

    .line 505
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_peek_view_albums_list"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 506
    :cond_10
    iget-object v4, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v4, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "motion_peek_chapter_preview"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 472
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/motion2013/MotionSettings;->isGoIntoQuideHub:Z

    .line 473
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/16 v8, 0x10

    const/4 v9, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 311
    iget-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 312
    .local v2, "super_mOpenDetailMenu":Z
    iput-boolean v4, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 315
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 316
    iput-boolean v4, p0, Lcom/android/settings/motion2013/MotionSettings;->isGoIntoQuideHub:Z

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "master_motion"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/motion2013/MotionSettings;->mMotionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v5, v6, v3, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 321
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0058

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 323
    .local v1, "padding":I
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v4, v4, v1, v4}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 324
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 326
    invoke-static {}, Lcom/android/settings/Utils;->isSupportMenuTreeForK()Z

    move-result v5

    if-nez v5, :cond_0

    .line 327
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0205e5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0205e6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 330
    :cond_0
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v7, Landroid/app/ActionBar$LayoutParams;

    const v8, 0x800015

    invoke-direct {v7, v9, v9, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v5, v6, v7}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 334
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarLayout:Landroid/view/View;

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 346
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "master_motion"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v0, v3

    .line 347
    .local v0, "motionEngineState":Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 349
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 350
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/motion2013/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "easy_mode_switch"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_2

    .line 352
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v4}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 356
    :goto_1
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 357
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 358
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 359
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 360
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 361
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 362
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionRippleEffect:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 363
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 364
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 365
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 366
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    .line 368
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mTilt:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_zooming"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    move v5, v3

    :goto_2
    invoke-virtual {v6, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 369
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mTiltToScrollList:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_tilt_to_list_scrolling"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    move v5, v3

    :goto_3
    invoke-virtual {v6, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 370
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_panning"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    move v5, v3

    :goto_4
    invoke-virtual {v6, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 371
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPanToBrowseImage:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_pan_to_browse_image"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    move v5, v3

    :goto_5
    invoke-virtual {v6, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 372
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mShake:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_shake"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    move v5, v3

    :goto_6
    invoke-virtual {v6, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 373
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mDoubleTap:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_double_tap"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_8

    move v5, v3

    :goto_7
    invoke-virtual {v6, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 374
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUp:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_pick_up"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_9

    move v5, v3

    :goto_8
    invoke-virtual {v6, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 375
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPickUpToCallOut:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_pick_up_to_call_out"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_a

    move v5, v3

    :goto_9
    invoke-virtual {v6, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 376
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mTurnOver:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_overturn"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_b

    move v5, v3

    :goto_a
    invoke-virtual {v6, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 377
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionRippleEffect:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "arc_motion_ripple_effect"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_c

    move v5, v3

    :goto_b
    invoke-virtual {v6, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 378
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionQuickGlance:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "arc_motion_quick_glance"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_d

    move v5, v3

    :goto_c
    invoke-virtual {v6, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 379
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mArcMotionMusicPlayback:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "arc_motion_music_playback"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_e

    move v5, v3

    :goto_d
    invoke-virtual {v6, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 380
    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekViewAlbumsList:Landroid/preference/SwitchPreferenceScreen;

    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_peek_view_albums_list"

    invoke-static {v5, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_f

    move v5, v3

    :goto_e
    invoke-virtual {v6, v5}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 381
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mPeekChapterPreview:Landroid/preference/SwitchPreferenceScreen;

    iget-object v6, p0, Lcom/android/settings/motion2013/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v7, "motion_peek_chapter_preview"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_10

    :goto_f
    invoke-virtual {v5, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 384
    iput-boolean v2, p0, Lcom/android/settings/SettingsPreferenceFragment;->mOpenDetailMenu:Z

    .line 385
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->openSearchDetailMenu()V

    .line 387
    return-void

    .end local v0    # "motionEngineState":Z
    :cond_1
    move v0, v4

    .line 346
    goto/16 :goto_0

    .line 354
    .restart local v0    # "motionEngineState":Z
    :cond_2
    iget-object v5, p0, Lcom/android/settings/motion2013/MotionSettings;->mPan:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v5, v0}, Landroid/preference/SwitchPreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_3
    move v5, v4

    .line 368
    goto/16 :goto_2

    :cond_4
    move v5, v4

    .line 369
    goto/16 :goto_3

    :cond_5
    move v5, v4

    .line 370
    goto/16 :goto_4

    :cond_6
    move v5, v4

    .line 371
    goto/16 :goto_5

    :cond_7
    move v5, v4

    .line 372
    goto/16 :goto_6

    :cond_8
    move v5, v4

    .line 373
    goto/16 :goto_7

    :cond_9
    move v5, v4

    .line 374
    goto/16 :goto_8

    :cond_a
    move v5, v4

    .line 375
    goto/16 :goto_9

    :cond_b
    move v5, v4

    .line 376
    goto :goto_a

    :cond_c
    move v5, v4

    .line 377
    goto :goto_b

    :cond_d
    move v5, v4

    .line 378
    goto :goto_c

    :cond_e
    move v5, v4

    .line 379
    goto :goto_d

    :cond_f
    move v5, v4

    .line 380
    goto :goto_e

    :cond_10
    move v3, v4

    .line 381
    goto :goto_f
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 408
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 413
    return-void
.end method
