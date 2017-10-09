.class public Lcom/android/keyguard/sec/SecPopupManager;
.super Ljava/lang/Object;
.source "SecPopupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final POPUP_DISMISS_DURATION:I = 0xfa0

.field private static final PREFERANCE_NAME:Ljava/lang/String; = "SecPopupManager"

.field private static final TAG:Ljava/lang/String; = "SecPopupManager"

.field private static mDialogDismissHandler:Landroid/os/Handler;

.field private static mHelpOverlyDialog:Landroid/app/Dialog;

.field private static mPopupDialog:Landroid/app/Dialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 476
    new-instance v0, Lcom/android/keyguard/sec/SecPopupManager$7;

    invoke-direct {v0}, Lcom/android/keyguard/sec/SecPopupManager$7;-><init>()V

    sput-object v0, Lcom/android/keyguard/sec/SecPopupManager;->mDialogDismissHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 30
    invoke-static {}, Lcom/android/keyguard/sec/SecPopupManager;->dismissdDialog()V

    return-void
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/keyguard/sec/SecPopupManager;->mDialogDismissHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/Dialog;

    .prologue
    .line 30
    sput-object p0, Lcom/android/keyguard/sec/SecPopupManager;->mPopupDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$300()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/android/keyguard/sec/SecPopupManager;->mHelpOverlyDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$302(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .param p0, "x0"    # Landroid/app/Dialog;

    .prologue
    .line 30
    sput-object p0, Lcom/android/keyguard/sec/SecPopupManager;->mHelpOverlyDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static dismissHelpOverlayDialog()V
    .locals 2

    .prologue
    .line 399
    sget-object v0, Lcom/android/keyguard/sec/SecPopupManager;->mHelpOverlyDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 400
    sget-object v0, Lcom/android/keyguard/sec/SecPopupManager;->mHelpOverlyDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 403
    const-string v0, "SecPopupManager"

    const-string v1, "help overlay dialog dismiss by api"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :goto_0
    return-void

    .line 406
    :cond_0
    const-string v0, "SecPopupManager"

    const-string v1, "help overlay dialog is null by api"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static dismissPopupDialog()V
    .locals 2

    .prologue
    .line 411
    sget-object v0, Lcom/android/keyguard/sec/SecPopupManager;->mPopupDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 412
    sget-object v0, Lcom/android/keyguard/sec/SecPopupManager;->mPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 415
    const-string v0, "SecPopupManager"

    const-string v1, "popup dialog dismiss by api"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :goto_0
    return-void

    .line 418
    :cond_0
    const-string v0, "SecPopupManager"

    const-string v1, "popup dialog is null by api"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static dismissdDialog()V
    .locals 2

    .prologue
    .line 483
    sget-object v0, Lcom/android/keyguard/sec/SecPopupManager;->mDialogDismissHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 485
    sget-object v0, Lcom/android/keyguard/sec/SecPopupManager;->mPopupDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 486
    sget-object v0, Lcom/android/keyguard/sec/SecPopupManager;->mPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 488
    :cond_0
    return-void
.end method

.method private static getCheckFlag(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 450
    const-string v3, "SecPopupManager"

    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 453
    .local v0, "sp":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_1

    .line 454
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    .line 458
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 454
    goto :goto_0

    .line 457
    :cond_1
    const-string v1, "SecPopupManager"

    const-string v3, "preferences is null"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 458
    goto :goto_0
.end method

.method public static getRemainCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 438
    const-string v2, "SecPopupManager"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 441
    .local v0, "sp":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 442
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 446
    :goto_0
    return v1

    .line 445
    :cond_0
    const-string v2, "SecPopupManager"

    const-string v3, "preferences is null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isDisplayedDialogByCheckFlag(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 423
    if-nez p1, :cond_0

    .line 425
    const-string v1, "SecPopupManager"

    const-string v2, "key is null, then always show dialog"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const/4 v0, 0x1

    .line 434
    :goto_0
    return v0

    .line 429
    :cond_0
    invoke-static {p0, p1}, Lcom/android/keyguard/sec/SecPopupManager;->getCheckFlag(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 432
    .local v0, "shouldShow":Z
    const-string v1, "SecPopupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", shouldShow is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isDisplayedDialogByCheckRemainCount(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 188
    if-nez p1, :cond_0

    .line 190
    const-string v2, "SecPopupManager"

    const-string v3, "key is null, then always show dialog"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :goto_0
    return v1

    .line 194
    :cond_0
    invoke-static {p0, p1}, Lcom/android/keyguard/sec/SecPopupManager;->getRemainCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 197
    .local v0, "remainCount":I
    const-string v2, "SecPopupManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", remain count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    if-nez v0, :cond_1

    .line 200
    const/4 v1, 0x0

    goto :goto_0

    .line 203
    :cond_1
    add-int/lit8 v2, v0, -0x1

    invoke-static {p0, p1, v2}, Lcom/android/keyguard/sec/SecPopupManager;->setRemainCount(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static isShowingPopupDialog()Z
    .locals 1

    .prologue
    .line 391
    sget-object v0, Lcom/android/keyguard/sec/SecPopupManager;->mPopupDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 392
    sget-object v0, Lcom/android/keyguard/sec/SecPopupManager;->mPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    .line 395
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setRemainCount(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 462
    const-string v1, "SecPopupManager"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 465
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz v0, :cond_0

    .line 466
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 467
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 470
    const-string v1, "SecPopupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", setup count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    :goto_0
    return-void

    .line 472
    :cond_0
    const-string v1, "SecPopupManager"

    const-string v2, "editor is null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static showOverlayHelp(Landroid/content/Context;IIILjava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layoutId"    # I
    .param p2, "checkBoxId"    # I
    .param p3, "closeBtnId"    # I
    .param p4, "prefKey"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 278
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_0

    .line 279
    const-string v0, "SecPopupManager"

    const-string v2, "view is null!"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v0, 0x0

    .line 283
    :goto_0
    return v0

    :cond_0
    move-object v0, p0

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/keyguard/sec/SecPopupManager;->showOverlayHelp(Landroid/content/Context;Landroid/view/View;IILjava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z

    move-result v0

    goto :goto_0
.end method

.method public static showOverlayHelp(Landroid/content/Context;IILjava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableId"    # I
    .param p2, "contentId"    # I
    .param p3, "prefKey"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

    .prologue
    const/16 v3, 0x8

    .line 242
    sget v0, Lcom/android/keyguard/R$layout;->sec_help_overlay_layout:I

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 244
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_0

    .line 245
    const-string v0, "SecPopupManager"

    const-string v2, "view is null!"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const/4 v0, 0x0

    .line 268
    :goto_0
    return v0

    .line 249
    :cond_0
    sget v0, Lcom/android/keyguard/R$id;->help_overlay_image:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 250
    .local v7, "imageView":Landroid/widget/ImageView;
    sget v0, Lcom/android/keyguard/R$id;->help_overlay_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 252
    .local v6, "contentView":Landroid/widget/TextView;
    if-eqz v7, :cond_1

    .line 253
    if-eqz p1, :cond_3

    .line 254
    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 260
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 261
    if-eqz p2, :cond_4

    .line 262
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(I)V

    .line 268
    :cond_2
    :goto_2
    sget v2, Lcom/android/keyguard/R$id;->help_overlay_checkbox:I

    sget v3, Lcom/android/keyguard/R$id;->help_overlay_button:I

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/keyguard/sec/SecPopupManager;->showOverlayHelp(Landroid/content/Context;Landroid/view/View;IILjava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z

    move-result v0

    goto :goto_0

    .line 256
    :cond_3
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 264
    :cond_4
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public static showOverlayHelp(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "drawableId"    # I
    .param p2, "contentStr"    # Ljava/lang/String;
    .param p3, "prefKey"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

    .prologue
    const/16 v3, 0x8

    .line 210
    sget v0, Lcom/android/keyguard/R$layout;->sec_help_overlay_layout:I

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 212
    .local v1, "v":Landroid/view/View;
    if-nez v1, :cond_0

    .line 213
    const-string v0, "SecPopupManager"

    const-string v2, "view is null!"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const/4 v0, 0x0

    .line 236
    :goto_0
    return v0

    .line 217
    :cond_0
    sget v0, Lcom/android/keyguard/R$id;->help_overlay_image:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 218
    .local v7, "imageView":Landroid/widget/ImageView;
    sget v0, Lcom/android/keyguard/R$id;->help_overlay_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 220
    .local v6, "contentView":Landroid/widget/TextView;
    if-eqz v7, :cond_1

    .line 221
    if-eqz p1, :cond_3

    .line 222
    invoke-virtual {v7, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 228
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 229
    if-eqz p2, :cond_4

    .line 230
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :cond_2
    :goto_2
    sget v2, Lcom/android/keyguard/R$id;->help_overlay_checkbox:I

    sget v3, Lcom/android/keyguard/R$id;->help_overlay_button:I

    move-object v0, p0

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/keyguard/sec/SecPopupManager;->showOverlayHelp(Landroid/content/Context;Landroid/view/View;IILjava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z

    move-result v0

    goto :goto_0

    .line 224
    :cond_3
    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 232
    :cond_4
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private static showOverlayHelp(Landroid/content/Context;Landroid/view/View;IILjava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkBoxId"    # I
    .param p3, "closeBtnId"    # I
    .param p4, "prefKey"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

    .prologue
    .line 290
    sget-object v0, Lcom/android/keyguard/sec/SecPopupManager;->mHelpOverlyDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 291
    const-string v0, "SecPopupManager"

    const-string v1, "Another help overlay dialog has been seen already"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v0, 0x0

    .line 387
    :goto_0
    return v0

    .line 301
    :cond_0
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 302
    const/4 v10, 0x0

    .line 303
    .local v10, "wakeupState":Z
    invoke-static {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v7

    .line 304
    .local v7, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v7, :cond_1

    .line 305
    invoke-static {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getCocktaiBarWakeUpState()Z

    move-result v10

    .line 308
    :cond_1
    if-eqz v10, :cond_2

    .line 309
    const-string v0, "SecPopupManager"

    const-string v1, "keyguard is not showing (night clock)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v0, 0x0

    goto :goto_0

    .line 314
    .end local v7    # "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    .end local v10    # "wakeupState":Z
    :cond_2
    invoke-static {p0, p4}, Lcom/android/keyguard/sec/SecPopupManager;->isDisplayedDialogByCheckFlag(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 315
    const/4 v0, 0x0

    goto :goto_0

    .line 318
    :cond_3
    new-instance v8, Lcom/android/keyguard/sec/SecPopupManager$4;

    invoke-direct {v8, p0}, Lcom/android/keyguard/sec/SecPopupManager$4;-><init>(Landroid/content/Context;)V

    .line 325
    .local v8, "d":Landroid/app/Dialog;
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 326
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 327
    new-instance v0, Lcom/android/keyguard/sec/SecPopupManager$5;

    move-object/from16 v1, p5

    move-object v2, p1

    move v3, p2

    move-object v4, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/sec/SecPopupManager$5;-><init>(Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;Landroid/view/View;ILandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 354
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 355
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/16 v2, 0xb2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 356
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x8ad

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 357
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 359
    invoke-virtual {v8, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 360
    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 362
    sput-object v8, Lcom/android/keyguard/sec/SecPopupManager;->mHelpOverlyDialog:Landroid/app/Dialog;

    .line 364
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 365
    .local v9, "view":Landroid/view/View;
    if-eqz v9, :cond_4

    instance-of v0, v9, Landroid/widget/Button;

    if-eqz v0, :cond_4

    move-object v6, v9

    .line 366
    check-cast v6, Landroid/widget/Button;

    .line 368
    .local v6, "closeButton":Landroid/widget/Button;
    new-instance v0, Lcom/android/keyguard/sec/SecPopupManager$6;

    invoke-direct {v0}, Lcom/android/keyguard/sec/SecPopupManager$6;-><init>()V

    invoke-virtual {v6, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    .end local v6    # "closeButton":Landroid/widget/Button;
    :cond_4
    const-string v0, "SecPopupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "help overlay dialog set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/keyguard/sec/SecPopupManager;->mHelpOverlyDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 387
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static showPopupDialog(Landroid/content/Context;IIILjava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleId"    # I
    .param p2, "contentId"    # I
    .param p3, "drawableId"    # I
    .param p4, "prefKey"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

    .prologue
    const/16 v6, 0x8

    .line 47
    sget v4, Lcom/android/keyguard/R$layout;->sec_popup_layout:I

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 49
    .local v3, "v":Landroid/view/View;
    if-nez v3, :cond_0

    .line 50
    const-string v4, "SecPopupManager"

    const-string v5, "view is null!"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v4, 0x0

    .line 82
    :goto_0
    return v4

    .line 54
    :cond_0
    sget v4, Lcom/android/keyguard/R$id;->popup_title:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 55
    .local v2, "titleView":Landroid/widget/TextView;
    sget v4, Lcom/android/keyguard/R$id;->popup_text:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    .local v0, "contentView":Landroid/widget/TextView;
    sget v4, Lcom/android/keyguard/R$id;->popup_image:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 58
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v2, :cond_1

    .line 59
    if-eqz p1, :cond_4

    .line 60
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 66
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 67
    if-eqz p2, :cond_5

    .line 68
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 74
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    if-eqz p3, :cond_3

    .line 75
    if-eqz p3, :cond_6

    .line 76
    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    :cond_3
    :goto_3
    invoke-static {p0, v3, p4, p5}, Lcom/android/keyguard/sec/SecPopupManager;->showPopupDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z

    move-result v4

    goto :goto_0

    .line 62
    :cond_4
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 70
    :cond_5
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 78
    :cond_6
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method public static showPopupDialog(Landroid/content/Context;ILjava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "layoutId"    # I
    .param p2, "prefKey"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

    .prologue
    .line 87
    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 89
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    .line 90
    const-string v1, "SecPopupManager"

    const-string v2, "view is null!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v1, 0x0

    .line 94
    :goto_0
    return v1

    :cond_0
    invoke-static {p0, v0, p2, p3}, Lcom/android/keyguard/sec/SecPopupManager;->showPopupDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z

    move-result v1

    goto :goto_0
.end method

.method private static showPopupDialog(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "v"    # Landroid/view/View;
    .param p2, "prefKey"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 99
    sget-object v8, Lcom/android/keyguard/sec/SecPopupManager;->mPopupDialog:Landroid/app/Dialog;

    if-eqz v8, :cond_1

    .line 100
    const-string v7, "SecPopupManager"

    const-string v8, "Another popup dialog has been seen already"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    :goto_0
    return v6

    .line 110
    :cond_1
    invoke-static {p0}, Lcom/android/keyguard/sec/KeyguardProperties;->hasCocktailBar(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 111
    const/4 v5, 0x0

    .line 112
    .local v5, "wakeupState":Z
    invoke-static {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v0

    .line 113
    .local v0, "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v0, :cond_2

    .line 114
    invoke-static {p0}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getCocktaiBarWakeUpState()Z

    move-result v5

    .line 117
    :cond_2
    if-eqz v5, :cond_3

    .line 118
    const-string v7, "SecPopupManager"

    const-string v8, "keyguard is not showing (night clock)"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    .end local v0    # "cocktailBarManager":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    .end local v5    # "wakeupState":Z
    :cond_3
    invoke-static {p0, p2}, Lcom/android/keyguard/sec/SecPopupManager;->isDisplayedDialogByCheckRemainCount(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 127
    const/4 v3, 0x0

    .line 128
    .local v3, "isTalkbackOn":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 129
    .local v1, "cr":Landroid/content/ContentResolver;
    const-string v8, "enabled_accessibility_services"

    invoke-static {v1, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "talkbackString":Ljava/lang/String;
    const-string v8, "accessibility_enabled"

    invoke-static {v1, v8, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v7, :cond_4

    if-eqz v4, :cond_4

    const-string v8, "(?i).*talkback.*"

    invoke-virtual {v4, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 133
    const/4 v3, 0x1

    .line 135
    :cond_4
    new-instance v8, Lcom/android/keyguard/sec/SecPopupManager$1;

    invoke-direct {v8}, Lcom/android/keyguard/sec/SecPopupManager$1;-><init>()V

    invoke-virtual {p1, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    new-instance v2, Lcom/android/keyguard/sec/SecPopupManager$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/sec/SecPopupManager$2;-><init>(Landroid/content/Context;)V

    .line 150
    .local v2, "d":Landroid/app/Dialog;
    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 151
    invoke-virtual {v2, v7}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 152
    new-instance v8, Lcom/android/keyguard/sec/SecPopupManager$3;

    invoke-direct {v8, p3}, Lcom/android/keyguard/sec/SecPopupManager$3;-><init>(Lcom/android/keyguard/sec/SecPopupManager$PopupDismissCallback;)V

    invoke-virtual {v2, v8}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 167
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/view/Window;->clearFlags(I)V

    .line 168
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    new-instance v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v9, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v8, v9}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x50

    invoke-virtual {v8, v9}, Landroid/view/Window;->setGravity(I)V

    .line 170
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 171
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v9, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 173
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 174
    invoke-virtual {v2, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 175
    sput-object v2, Lcom/android/keyguard/sec/SecPopupManager;->mPopupDialog:Landroid/app/Dialog;

    .line 177
    const-string v8, "SecPopupManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "popup dialog set to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/keyguard/sec/SecPopupManager;->mPopupDialog:Landroid/app/Dialog;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    if-nez v3, :cond_5

    .line 180
    sget-object v8, Lcom/android/keyguard/sec/SecPopupManager;->mDialogDismissHandler:Landroid/os/Handler;

    const-wide/16 v10, 0xfa0

    invoke-virtual {v8, v6, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 182
    :cond_5
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    move v6, v7

    .line 184
    goto/16 :goto_0
.end method
