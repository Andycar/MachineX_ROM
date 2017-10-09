.class public Lcom/android/systemui/qs/tiles/FloatingMessageTile;
.super Lcom/android/systemui/qs/QSTile;
.source "FloatingMessageTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final AIRMESSAGE_STATUS:Ljava/lang/String; = "airmessage_on"

.field private static final ASG_SETTING_CHANGE_ACTION:Ljava/lang/String; = "android.settings.AIRMESSAGE_SWITCH_CHANGED"

.field public static final DB_KEY_AIRMESSAGE_ON:Ljava/lang/String; = "airmessage_on"

.field private static final TAG:Ljava/lang/String; = "FloatingMessageTile"


# instance fields
.field public BROADCAST_AIRMSG_ACTION:Ljava/lang/String;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mSetting:Lcom/android/systemui/qs/SystemSetting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 4
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 55
    const-string v0, "com.bst.airmessage.quickpanel.onff"

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->BROADCAST_AIRMSG_ACTION:Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/android/systemui/qs/tiles/FloatingMessageTile$1;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string v3, "airmessage_on"

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/systemui/qs/tiles/FloatingMessageTile$1;-><init>(Lcom/android/systemui/qs/tiles/FloatingMessageTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->init()V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/FloatingMessageTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/FloatingMessageTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/FloatingMessageTile;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/FloatingMessageTile;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/FloatingMessageTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/FloatingMessageTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/tiles/FloatingMessageTile;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/FloatingMessageTile;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->setEnabled(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/tiles/FloatingMessageTile;)Lcom/android/systemui/qs/SystemSetting;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/FloatingMessageTile;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/tiles/FloatingMessageTile;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/FloatingMessageTile;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->refreshState(Ljava/lang/Object;)V

    return-void
.end method

.method private getTypeOfCover(Landroid/content/Context;)I
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 308
    const/4 v2, 0x2

    .line 309
    .local v2, "type":I
    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    .line 310
    .local v0, "covermanager":Lcom/samsung/android/sdk/cover/ScoverManager;
    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    .line 312
    .local v1, "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverState;->getType()I

    move-result v2

    .line 315
    .end local v1    # "mScoverState":Lcom/samsung/android/sdk/cover/ScoverState;
    :cond_0
    return v2
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 186
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 187
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iput v2, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 189
    const-string v2, "FloatingMessageTile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    if-ne v1, v3, :cond_1

    .line 192
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->BROADCAST_AIRMSG_ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "airmessage_on"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 194
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 201
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->refreshState(Ljava/lang/Object;)V

    .line 202
    return-void

    .line 187
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    .line 196
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->BROADCAST_AIRMSG_ACTION:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "airmessage_on"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method private isCoverVerified(Landroid/content/Context;)Z
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 292
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->getTypeOfCover(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    .line 293
    .local v0, "hasCover":Z
    :goto_0
    return v0

    .line 292
    .end local v0    # "hasCover":Z
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isWlanAvailable(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 319
    const/4 v2, 0x0

    .line 320
    .local v2, "isAvailable":Z
    const-string v3, "connectivity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 321
    .local v0, "connectivity":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 323
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 324
    const/4 v2, 0x1

    .line 327
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :cond_0
    return v2
.end method

.method private setAirMessageData(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    .line 272
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 274
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airmessage_alert"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 277
    .local v0, "do_not_show_again":I
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airmessage_on"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 280
    .local v1, "isOn":I
    if-nez v0, :cond_1

    .line 281
    if-nez v1, :cond_0

    .line 282
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->showGuideDialog(I)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    const-string v3, "FloatingMessageTile"

    const-string v4, "set AirMessage status to on"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->refreshState(Ljava/lang/Object;)V

    .line 287
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->setEnabled(Z)V

    goto :goto_0
.end method

.method private setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 143
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 145
    .local v0, "mode":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/SystemSetting;->setValue(I)V

    .line 146
    return-void

    .line 143
    .end local v0    # "mode":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showGuideDialog(I)V
    .locals 8
    .param p1, "showagain_checkbox_flag"    # I

    .prologue
    .line 209
    const-string v5, "FloatingMessageTile"

    const-string v6, "showGuideDialog"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    const v6, 0x7f0400ab

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 214
    .local v3, "mAirMessageDataAlertView":Landroid/view/View;
    const v5, 0x7f0e0343

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 215
    .local v1, "contentText":Landroid/widget/TextView;
    const v5, 0x7f0e0344

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 218
    .local v4, "mDisableAlertCheckBox":Landroid/widget/CheckBox;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 220
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->isWlanAvailable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 221
    const v5, 0x7f0d0477

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 222
    const v5, 0x7f0d0476

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 228
    :goto_0
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 229
    const v5, 0x104000a

    new-instance v6, Lcom/android/systemui/qs/tiles/FloatingMessageTile$2;

    invoke-direct {v6, p0, v4}, Lcom/android/systemui/qs/tiles/FloatingMessageTile$2;-><init>(Lcom/android/systemui/qs/tiles/FloatingMessageTile;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 243
    const/high16 v5, 0x1040000

    new-instance v6, Lcom/android/systemui/qs/tiles/FloatingMessageTile$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/FloatingMessageTile$3;-><init>(Lcom/android/systemui/qs/tiles/FloatingMessageTile;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 249
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 251
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v5}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    .line 253
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mAlertDialog:Landroid/app/AlertDialog;

    .line 255
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/android/systemui/qs/tiles/FloatingMessageTile$4;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/tiles/FloatingMessageTile$4;-><init>(Lcom/android/systemui/qs/tiles/FloatingMessageTile;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 261
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    const-string v6, "keyguard"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    .line 262
    .local v2, "kgm":Landroid/app/KeyguardManager;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 263
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 268
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 269
    return-void

    .line 224
    .end local v2    # "kgm":Landroid/app/KeyguardManager;
    :cond_0
    const v5, 0x7f0d0479

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 225
    const v5, 0x7f0d0478

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 265
    .restart local v2    # "kgm":Landroid/app/KeyguardManager;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    goto :goto_1
.end method


# virtual methods
.method public handleClick()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 83
    const-string v4, "FloatingMessageTile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleClick : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-nez v2, :cond_2

    .line 90
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->setAirMessageData(Z)V

    .line 92
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "airmessage_on"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 96
    .local v1, "isOn":I
    if-ne v1, v3, :cond_0

    .line 97
    const-string v2, "FloatingMessageTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendBroadcast: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->BROADCAST_AIRMSG_ACTION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "on !"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->BROADCAST_AIRMSG_ACTION:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "airmessage_on"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 103
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 106
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isOn":I
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->BROADCAST_AIRMSG_ACTION:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "airmessage_on"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 109
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 110
    const-string v2, "FloatingMessageTile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendBroadcast: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->BROADCAST_AIRMSG_ACTION:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "off !"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-direct {p0, v6}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->setEnabled(Z)V

    .line 115
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v2}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v2

    if-ne v2, v3, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->refreshState(Ljava/lang/Object;)V

    .line 116
    const-string v2, "FloatingMessageTile"

    const-string v3, "setActivateStatus: STATUS_OFF"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 115
    :cond_3
    const/4 v2, 0x2

    goto :goto_1
.end method

.method protected handleDestroy()V
    .locals 2

    .prologue
    .line 150
    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    .line 151
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    .line 152
    return-void
.end method

.method public handleLongClick()V
    .locals 5

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.bst.airmessage"

    const-string v4, "com.bst.airmessage.settings.AirMessageSettings"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 132
    const/4 v1, 0x1

    .line 134
    .local v1, "isCoverAttached":Z
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->isCoverVerified(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->getTypeOfCover(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_1

    .line 135
    :cond_0
    const/4 v1, 0x0

    .line 138
    :cond_1
    const-string v2, "S View cover attached"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->startSettingsActivity(Landroid/content/Intent;)V

    .line 140
    return-void
.end method

.method public handleSecondaryClick()V
    .locals 0

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->handleLongClick()V

    .line 124
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 7
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const v6, 0x7f0d01f2

    const/4 v5, 0x0

    const v4, 0x7f0d01f1

    const/4 v2, 0x1

    .line 156
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 157
    .local v0, "value":I
    :goto_0
    iput v0, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 158
    iput-boolean v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 159
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 161
    packed-switch v0, :pswitch_data_0

    .line 179
    :goto_1
    return-void

    .line 156
    .end local v0    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v1, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 163
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "value":I
    :pswitch_0
    const v1, 0x7f02055c

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 164
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 169
    :pswitch_1
    const v1, 0x7f02055b

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 170
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 175
    :pswitch_2
    const v1, 0x7f02055a

    iput v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->iconId:I

    .line 176
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    goto :goto_1

    .line 161
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 53
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 183
    return-void
.end method

.method public userSwitched()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile;->mSetting:Lcom/android/systemui/qs/SystemSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/SystemSetting;->onChange(Z)V

    .line 206
    return-void
.end method
