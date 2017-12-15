.class public Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;
.super Landroid/app/Dialog;
.source "FingerprintIdentifyDialog.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerprintIdentifyDialog"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

.field private mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

.field private mOwnName:Ljava/lang/String;

.field private mSecurityLevel:I

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;
    .param p3, "securityLevel"    # I

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$1;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    .line 91
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->constructFingerprintIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;ILjava/lang/String;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;ILjava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;
    .param p3, "securityLevel"    # I
    .param p4, "ownName"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$1;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->constructFingerprintIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;ILjava/lang/String;)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private constructFingerprintIdentifyDialog(Landroid/content/Context;Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;ILjava/lang/String;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;
    .param p3, "securityLevel"    # I
    .param p4, "ownName"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    .line 82
    iput p3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mSecurityLevel:I

    .line 83
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;

    .line 84
    iput-object p4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mOwnName:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mSecurityLevel:I

    invoke-static {v0, v1, p4}, Lcom/samsung/android/fingerprint/FingerprintManager;->getInstance(Landroid/content/Context;ILjava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->registerClient()V

    .line 87
    return-void
.end method

.method private registerClient()V
    .registers 5

    .prologue
    .line 107
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v2, :cond_31

    .line 108
    const/4 v1, 0x0

    .line 109
    .local v1, "mFingerprintClientSpecBuilder":Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    new-instance v2, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    const-string v3, "com.samsung.android.fingerprint.FingerprintIdentifyDialog"

    invoke-direct {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mSecurityLevel:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->setSecurityLevel(I)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mOwnName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->setOwnName(Ljava/lang/String;)Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;->build()Landroid/os/Bundle;

    move-result-object v0

    .line 114
    .local v0, "clientSpec":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFingerprintClient:Lcom/samsung/android/fingerprint/IFingerprintClient;

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->registerClient(Lcom/samsung/android/fingerprint/IFingerprintClient;Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    .line 115
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    if-nez v2, :cond_31

    .line 116
    const-string v2, "FingerprintIdentifyDialog"

    const-string v3, "Token value is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    .end local v0    # "clientSpec":Landroid/os/Bundle;
    .end local v1    # "mFingerprintClientSpecBuilder":Lcom/samsung/android/fingerprint/FingerprintManager$FingerprintClientSpecBuilder;
    :cond_31
    return-void
.end method

.method private unregistreClient()V
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_12

    .line 125
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->unregisterClient(Landroid/os/IBinder;)Z

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    .line 128
    :cond_12
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 132
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_a

    .line 133
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, v2}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 135
    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->unregistreClient()V

    .line 136
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    if-eqz v0, :cond_17

    .line 137
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyAppActivityState(ILandroid/os/Bundle;)V

    .line 139
    :cond_17
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 140
    return-void
.end method

.method public getToken()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 65
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/fingerprint/FingerprintEvent;

    .line 66
    .local v0, "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    if-eqz v0, :cond_16

    .line 67
    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mListener:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$FingerprintListener;->onEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    .line 68
    iget v1, v0, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_14

    .line 69
    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->dismiss()V

    .line 76
    :cond_14
    :goto_14
    const/4 v1, 0x1

    return v1

    .line 74
    :cond_16
    const-string v1, "FingerprintIdentifyDialog"

    const-string v2, "handleMessage: Invaild event"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 152
    invoke-super {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 153
    return-void
.end method

.method public show()V
    .registers 1

    .prologue
    .line 146
    return-void
.end method
