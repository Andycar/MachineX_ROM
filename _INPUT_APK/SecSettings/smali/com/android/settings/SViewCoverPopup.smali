.class public Lcom/android/settings/SViewCoverPopup;
.super Landroid/app/Activity;
.source "SViewCoverPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final DEFULT_WALLPAPER_BACKGROUND:I


# instance fields
.field private mBtnCancel:Landroid/widget/Button;

.field private mBtnClose:Landroid/widget/ImageButton;

.field private mBtnSave:Landroid/widget/Button;

.field private mCheckDoNotShow:Landroid/widget/CheckBox;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/16 v0, 0x2e

    const/16 v1, 0x1a

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    sput v0, Lcom/android/settings/SViewCoverPopup;->DEFULT_WALLPAPER_BACKGROUND:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public CoverOpen()V
    .locals 4

    .prologue
    .line 242
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverPopup;->finish()V

    .line 253
    :goto_0
    return-void

    .line 247
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 248
    .local v0, "mIntent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$SelectInfoCoverSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 251
    invoke-virtual {p0, v0}, Lcom/android/settings/SViewCoverPopup;->startActivity(Landroid/content/Intent;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverPopup;->finish()V

    goto :goto_0
.end method

.method public getBackgroundColor()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, "color":I
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_color_use_all"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 282
    .local v3, "mColorUseAll":I
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 284
    .local v1, "mBackgroundColor":I
    if-ne v3, v7, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_color_random"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 287
    .local v2, "mColorRandom":I
    packed-switch v2, :pswitch_data_0

    .line 297
    invoke-static {v6, v6, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    .line 302
    .end local v2    # "mColorRandom":I
    :cond_0
    :goto_0
    const/16 v4, 0xef

    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 305
    return v0

    .line 289
    .restart local v2    # "mColorRandom":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "s_vew_cover_background_color"

    sget v6, Lcom/android/settings/SViewCoverPopup;->DEFULT_WALLPAPER_BACKGROUND:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 291
    goto :goto_0

    .line 293
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sview_bg_display_random"

    sget v6, Lcom/android/settings/SViewCoverPopup;->DEFULT_WALLPAPER_BACKGROUND:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 295
    goto :goto_0

    .line 287
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 311
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 312
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 332
    :goto_0
    return-void

    .line 314
    :sswitch_0
    iget-object v1, p0, Lcom/android/settings/SViewCoverPopup;->mCheckDoNotShow:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    const-string v1, "DoNotShow"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 316
    const-string v1, "SViewCoverPopup"

    const-string v2, "onClick : save button clicked"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SViewCoverPopup;->setResult(ILandroid/content/Intent;)V

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverPopup;->finish()V

    goto :goto_0

    .line 322
    :sswitch_1
    const-string v1, "DoNotShow"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 323
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/SViewCoverPopup;->setResult(ILandroid/content/Intent;)V

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverPopup;->finish()V

    goto :goto_0

    .line 327
    :sswitch_2
    const-string v1, "DoNotShow"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 328
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/SViewCoverPopup;->setResult(ILandroid/content/Intent;)V

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverPopup;->finish()V

    goto :goto_0

    .line 312
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10009c -> :sswitch_1
        0x7f10013b -> :sswitch_2
        0x7f1004b1 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 26
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/SViewCoverPopup;->requestWindowFeature(I)Z

    .line 76
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const/high16 v14, 0x4080000

    .line 80
    .local v14, "mFlag":I
    const/high16 v18, 0x400000

    .line 81
    .local v18, "secure_flags":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "automatic_unlock"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 82
    .local v8, "isAutoUnlock":I
    const-string v22, "keyguard"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/SViewCoverPopup;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/KeyguardManager;

    .line 83
    .local v16, "mKeyguardManager":Landroid/app/KeyguardManager;
    invoke-virtual/range {v16 .. v16}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v9

    .line 85
    .local v9, "isSecureLock":Z
    if-nez v9, :cond_0

    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v8, v0, :cond_0

    .line 86
    or-int v14, v14, v18

    .line 88
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getWindow()Landroid/view/Window;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    move/from16 v23, v0

    or-int/lit8 v23, v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 89
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getWindow()Landroid/view/Window;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v22

    const-wide/16 v24, 0x1770

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getWindow()Landroid/view/Window;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v22

    const-wide/16 v24, 0x0

    move-wide/from16 v0, v24

    move-object/from16 v2, v22

    iput-wide v0, v2, Landroid/view/WindowManager$LayoutParams;->screenDimDuration:J

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getWindow()Landroid/view/Window;

    move-result-object v22

    const/16 v23, -0x1

    const/16 v24, -0x1

    invoke-virtual/range {v22 .. v24}, Landroid/view/Window;->setLayout(II)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getWindow()Landroid/view/Window;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/view/Window;->addFlags(I)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getWindow()Landroid/view/Window;

    move-result-object v22

    const/16 v23, 0x2

    invoke-virtual/range {v22 .. v23}, Landroid/view/Window;->clearFlags(I)V

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getWindow()Landroid/view/Window;

    move-result-object v22

    new-instance v23, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual/range {v22 .. v23}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getWindow()Landroid/view/Window;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v10

    .line 98
    .local v10, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v22, 0x0

    move/from16 v0, v22

    iput v0, v10, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getWindow()Landroid/view/Window;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 100
    new-instance v22, Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SViewCoverPopup;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SViewCoverPopup;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getWindow()Landroid/view/Window;

    move-result-object v23

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Lcom/samsung/android/sdk/cover/ScoverManager;->setCoverModeToWindow(Landroid/view/Window;I)V

    .line 103
    const v22, 0x7f040210

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/SViewCoverPopup;->setContentView(I)V

    .line 105
    const v22, 0x7f1000d3

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/SViewCoverPopup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    .line 106
    .local v11, "mCoverShorcutBG":Landroid/widget/FrameLayout;
    const v22, 0x7f1000d4

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/SViewCoverPopup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 107
    .local v12, "mDIMBG":Landroid/widget/ImageView;
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSViewCover2014Supported(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isSViewWallpaperOldSupported()Z

    move-result v22

    if-nez v22, :cond_4

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "sview_color_wallpaper"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 110
    .local v4, "CurrentCoverBackgroundDbId":I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v4, v0, :cond_3

    .line 111
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getSViewWallpaperDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    const/16 v22, 0x4d

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v22 .. v25}, Landroid/graphics/Color;->argb(IIII)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 196
    .end local v4    # "CurrentCoverBackgroundDbId":I
    :cond_1
    :goto_0
    const v22, 0x7f1004ad

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/SViewCoverPopup;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 197
    .local v21, "tvTitle":Landroid/widget/TextView;
    const v22, 0x7f1004ae

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/SViewCoverPopup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 199
    .local v20, "tvContents":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 200
    .local v7, "intent":Landroid/content/Intent;
    const-string v22, "enable"

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 201
    .local v6, "enable":Z
    const-string v22, "titleId"

    const v23, 0x7f0a1617

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .line 203
    .local v19, "titleId":I
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 204
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v6, v0, :cond_8

    .line 205
    const v22, 0x7f0a0fdb

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 209
    :goto_1
    const v22, 0x7f1004af

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/SViewCoverPopup;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/CheckBox;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SViewCoverPopup;->mCheckDoNotShow:Landroid/widget/CheckBox;

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SViewCoverPopup;->mCheckDoNotShow:Landroid/widget/CheckBox;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 211
    const v22, 0x7f1004b1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/SViewCoverPopup;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Button;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SViewCoverPopup;->mBtnSave:Landroid/widget/Button;

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SViewCoverPopup;->mBtnSave:Landroid/widget/Button;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    const v22, 0x7f10009c

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/SViewCoverPopup;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/Button;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SViewCoverPopup;->mBtnCancel:Landroid/widget/Button;

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SViewCoverPopup;->mBtnCancel:Landroid/widget/Button;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    const v22, 0x7f10013b

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/settings/SViewCoverPopup;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/ImageButton;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SViewCoverPopup;->mBtnClose:Landroid/widget/ImageButton;

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/SViewCoverPopup;->mBtnClose:Landroid/widget/ImageButton;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    new-instance v17, Lcom/samsung/android/sdk/cover/Scover;

    invoke-direct/range {v17 .. v17}, Lcom/samsung/android/sdk/cover/Scover;-><init>()V

    .line 219
    .local v17, "mScover":Lcom/samsung/android/sdk/cover/Scover;
    const/4 v13, 0x1

    .line 221
    .local v13, "mDeviceSupportCoverSDK":Z
    :try_start_0
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/Scover;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/SsdkUnsupportedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 227
    :goto_2
    if-eqz v13, :cond_2

    .line 228
    new-instance v22, Lcom/samsung/android/sdk/cover/ScoverManager;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SViewCoverPopup;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    .line 229
    new-instance v22, Lcom/android/settings/SViewCoverPopup$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/SViewCoverPopup$1;-><init>(Lcom/android/settings/SViewCoverPopup;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/SViewCoverPopup;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    .line 239
    :cond_2
    return-void

    .line 114
    .end local v6    # "enable":Z
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v13    # "mDeviceSupportCoverSDK":Z
    .end local v17    # "mScover":Lcom/samsung/android/sdk/cover/Scover;
    .end local v19    # "titleId":I
    .end local v20    # "tvContents":Landroid/widget/TextView;
    .end local v21    # "tvTitle":Landroid/widget/TextView;
    .restart local v4    # "CurrentCoverBackgroundDbId":I
    :cond_3
    packed-switch v4, :pswitch_data_0

    .line 137
    const v22, 0x7f0205d9

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 140
    :goto_3
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v22 .. v25}, Landroid/graphics/Color;->argb(IIII)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 116
    :pswitch_0
    const v22, 0x7f0205da

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 119
    :pswitch_1
    const v22, 0x7f0205db

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 122
    :pswitch_2
    const v22, 0x7f0205dc

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 125
    :pswitch_3
    const v22, 0x7f0205dd

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 128
    :pswitch_4
    const v22, 0x7f0205de

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 131
    :pswitch_5
    const v22, 0x7f0205df

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 134
    :pswitch_6
    const v22, 0x7f0205e0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_3

    .line 142
    .end local v4    # "CurrentCoverBackgroundDbId":I
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->isSViewCover2014Supported(Landroid/content/Context;)Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-static {}, Lcom/android/settings/Utils;->isSViewWallpaperOldSupported()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 143
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "sview_color_wallpaper"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 145
    .restart local v4    # "CurrentCoverBackgroundDbId":I
    const/16 v22, 0x1

    move/from16 v0, v22

    if-ne v4, v0, :cond_5

    .line 146
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getSViewWallpaperDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    const/16 v22, 0x4d

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v22 .. v25}, Landroid/graphics/Color;->argb(IIII)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 149
    :cond_5
    packed-switch v4, :pswitch_data_1

    .line 181
    const v22, 0x7f0205d9

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 184
    :goto_4
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v22 .. v25}, Landroid/graphics/Color;->argb(IIII)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 151
    :pswitch_7
    const v22, 0x7f0205d9

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 154
    :pswitch_8
    const v22, 0x7f0205da

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 157
    :pswitch_9
    const v22, 0x7f0205db

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 160
    :pswitch_a
    const v22, 0x7f0205dc

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 163
    :pswitch_b
    const v22, 0x7f0205dd

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 166
    :pswitch_c
    const v22, 0x7f0205de

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 169
    :pswitch_d
    const v22, 0x7f0205df

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 172
    :pswitch_e
    const v22, 0x7f0205e0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 175
    :pswitch_f
    const v22, 0x7f0205e1

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 178
    :pswitch_10
    const v22, 0x7f0205e2

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_4

    .line 187
    .end local v4    # "CurrentCoverBackgroundDbId":I
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getBackgroundColor()I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 188
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/SViewCoverPopup;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v22

    const-string v23, "sview_color_wallpaper"

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v22

    if-eqz v22, :cond_7

    const/4 v15, 0x1

    .line 190
    .local v15, "mIsWallpaper":Z
    :goto_5
    if-eqz v15, :cond_1

    .line 191
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getSViewWallpaperDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    const/16 v22, 0x4d

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v22 .. v25}, Landroid/graphics/Color;->argb(IIII)I

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 188
    .end local v15    # "mIsWallpaper":Z
    :cond_7
    const/4 v15, 0x0

    goto :goto_5

    .line 207
    .restart local v6    # "enable":Z
    .restart local v7    # "intent":Landroid/content/Intent;
    .restart local v19    # "titleId":I
    .restart local v20    # "tvContents":Landroid/widget/TextView;
    .restart local v21    # "tvTitle":Landroid/widget/TextView;
    :cond_8
    const v22, 0x7f0a0fdc

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 222
    .restart local v13    # "mDeviceSupportCoverSDK":Z
    .restart local v17    # "mScover":Lcom/samsung/android/sdk/cover/Scover;
    :catch_0
    move-exception v5

    .line 223
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    const/4 v13, 0x0

    .line 226
    goto/16 :goto_2

    .line 224
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v5

    .line 225
    .local v5, "e":Lcom/samsung/android/sdk/SsdkUnsupportedException;
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 149
    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 271
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 273
    iget-object v0, p0, Lcom/android/settings/SViewCoverPopup;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/settings/SViewCoverPopup;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v1, p0, Lcom/android/settings/SViewCoverPopup;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverPopup;->finish()V

    .line 277
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 257
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 258
    iget-object v1, p0, Lcom/android/settings/SViewCoverPopup;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/android/settings/SViewCoverPopup;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/android/settings/SViewCoverPopup;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SViewCoverPopup;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v0

    .line 262
    .local v0, "state":Lcom/samsung/android/sdk/cover/ScoverState;
    if-nez v0, :cond_2

    .line 267
    :cond_1
    :goto_0
    return-void

    .line 265
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SViewCoverPopup;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getSwitchState()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/SViewCoverPopup;->CoverOpen()V

    goto :goto_0
.end method
