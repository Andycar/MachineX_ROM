.class public Lcom/android/systemui/qs/QSFooter;
.super Ljava/lang/Object;
.source "QSFooter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSFooter$H;,
        Lcom/android/systemui/qs/QSFooter$Callback;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z

.field protected static final TAG:Ljava/lang/String; = "QSFooter"


# instance fields
.field private final mCallback:Lcom/android/systemui/qs/QSFooter$Callback;

.field private final mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private final mFooterIcon:Landroid/widget/ImageView;

.field private final mFooterText:Landroid/widget/TextView;

.field private mFooterTextId:I

.field private mHandler:Landroid/os/Handler;

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mIsIconVisible:Z

.field private mIsVisible:Z

.field private final mMainHandler:Landroid/os/Handler;

.field private final mRootView:Landroid/view/View;

.field private mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private final mUpdateDisplayState:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "QSFooter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/qs/QSFooter;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSPanel;Landroid/content/Context;)V
    .locals 3
    .param p1, "qsPanel"    # Lcom/android/systemui/qs/QSPanel;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/systemui/qs/QSFooter$Callback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSFooter$Callback;-><init>(Lcom/android/systemui/qs/QSFooter;Lcom/android/systemui/qs/QSFooter$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mCallback:Lcom/android/systemui/qs/QSFooter$Callback;

    .line 240
    new-instance v0, Lcom/android/systemui/qs/QSFooter$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSFooter$1;-><init>(Lcom/android/systemui/qs/QSFooter;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mUpdateDisplayState:Ljava/lang/Runnable;

    .line 60
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040062

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    const v1, 0x7f0e01e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterText:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    const v1, 0x7f0e01e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterIcon:Landroid/widget/ImageView;

    .line 65
    iput-object p2, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mMainHandler:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/QSFooter;)Lcom/android/systemui/statusbar/phone/QSTileHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSFooter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSFooter;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSFooter;

    .prologue
    .line 39
    iget v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterTextId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSFooter;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSFooter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSFooter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSFooter;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mIsVisible:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSFooter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSFooter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSFooter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSFooter;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSFooter;->mIsIconVisible:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSFooter;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSFooter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSFooter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSFooter;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->handleRefreshState()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/QSFooter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSFooter;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->handleClick()V

    return-void
.end method

.method private createDialog()V
    .locals 3

    .prologue
    .line 138
    new-instance v0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->getTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->getPositiveButton()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->getNegativeButton()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 146
    return-void
.end method

.method private getMessage()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 161
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasDeviceOwner()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 162
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasProfileOwner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isLegacyVpn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d032e

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getProfileOwnerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getLegacyVpnName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 224
    :goto_0
    return-object v0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d032d

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getProfileOwnerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getVpnApp()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d032a

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getProfileOwnerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 184
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 185
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isLegacyVpn()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0328

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getLegacyVpnName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0327

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getVpnApp()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 196
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0324

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getDeviceOwnerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 200
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasProfileOwner()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 201
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 202
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isLegacyVpn()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 203
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d032c

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getProfileOwnerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getLegacyVpnName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 208
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d032b

    new-array v2, v6, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getProfileOwnerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getVpnApp()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 214
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0329

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getProfileOwnerName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 219
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isLegacyVpn()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 220
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0326

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getLegacyVpnName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 224
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0325

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v3}, Lcom/android/systemui/statusbar/policy/SecurityController;->getVpnApp()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getNegativeButton()Ljava/lang/String;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isLegacyVpn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0323

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 152
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0322

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPositiveButton()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mContext:Landroid/content/Context;

    const v1, 0x7f0d02d5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTitle()I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasDeviceOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const v0, 0x7f0d031f

    .line 237
    :goto_0
    return v0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasProfileOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    const v0, 0x7f0d0320

    goto :goto_0

    .line 237
    :cond_1
    const v0, 0x7f0d0321

    goto :goto_0
.end method

.method private handleClick()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->collapsePanels()V

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/qs/QSFooter;->createDialog()V

    .line 104
    return-void
.end method

.method private handleRefreshState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 111
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasDeviceOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    const v0, 0x7f0d031c

    iput v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterTextId:I

    .line 113
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSFooter;->mIsVisible:Z

    .line 114
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mIsIconVisible:Z

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mUpdateDisplayState:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 128
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->hasProfileOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    const v0, 0x7f0d031d

    iput v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterTextId:I

    .line 117
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSFooter;->mIsVisible:Z

    .line 118
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mIsIconVisible:Z

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 120
    const v0, 0x7f0d031e

    iput v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterTextId:I

    .line 121
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSFooter;->mIsVisible:Z

    .line 122
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSFooter;->mIsIconVisible:Z

    goto :goto_0

    .line 124
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mIsVisible:Z

    .line 125
    iput-boolean v1, p0, Lcom/android/systemui/qs/QSFooter;->mIsIconVisible:Z

    goto :goto_0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public hasFooter()Z
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 132
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->disconnectFromVpn()V

    .line 135
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 98
    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mFooterText:Landroid/widget/TextView;

    const v1, 0x7f0b027a

    invoke-static {v0, v1}, Lcom/android/systemui/FontSizeUtils;->updateFontSize(Landroid/widget/TextView;I)V

    .line 85
    return-void
.end method

.method public refreshState()V
    .locals 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 108
    return-void
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/systemui/qs/QSFooter;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 71
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getSecurityController()Lcom/android/systemui/statusbar/policy/SecurityController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    .line 72
    new-instance v0, Lcom/android/systemui/qs/QSFooter$H;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/qs/QSFooter$H;-><init>(Lcom/android/systemui/qs/QSFooter;Landroid/os/Looper;Lcom/android/systemui/qs/QSFooter$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mHandler:Landroid/os/Handler;

    .line 73
    return-void
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .prologue
    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mCallback:Lcom/android/systemui/qs/QSFooter$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSFooter;->mSecurityController:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v1, p0, Lcom/android/systemui/qs/QSFooter;->mCallback:Lcom/android/systemui/qs/QSFooter$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityController;->removeCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    goto :goto_0
.end method
