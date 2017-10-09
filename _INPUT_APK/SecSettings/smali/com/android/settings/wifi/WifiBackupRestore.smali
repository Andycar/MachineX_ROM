.class public Lcom/android/settings/wifi/WifiBackupRestore;
.super Landroid/content/BroadcastReceiver;
.source "WifiBackupRestore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;
    }
.end annotation


# static fields
.field private static cipher:Ljavax/crypto/Cipher;

.field private static key:Ljavax/crypto/spec/SecretKeySpec;


# instance fields
.field mOption:I

.field mSessionKey:Ljava/lang/String;

.field mSource:Ljava/lang/String;

.field xmlConf:Ljava/lang/String;

.field xmlModel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 122
    return-void
.end method

.method static synthetic access$000()Ljavax/crypto/Cipher;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/settings/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method static synthetic access$002(Ljavax/crypto/Cipher;)Ljavax/crypto/Cipher;
    .locals 0
    .param p0, "x0"    # Ljavax/crypto/Cipher;

    .prologue
    .line 55
    sput-object p0, Lcom/android/settings/wifi/WifiBackupRestore;->cipher:Ljavax/crypto/Cipher;

    return-object p0
.end method

.method static synthetic access$100()Ljavax/crypto/spec/SecretKeySpec;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/settings/wifi/WifiBackupRestore;->key:Ljavax/crypto/spec/SecretKeySpec;

    return-object v0
.end method

.method static synthetic access$102(Ljavax/crypto/spec/SecretKeySpec;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 0
    .param p0, "x0"    # Ljavax/crypto/spec/SecretKeySpec;

    .prologue
    .line 55
    sput-object p0, Lcom/android/settings/wifi/WifiBackupRestore;->key:Ljavax/crypto/spec/SecretKeySpec;

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.sec.android.intent.action.REQUEST_BACKUP_WIFIWPACONF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    const-string v2, "WifiBackupRestore"

    const-string v3, "request backup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;-><init>(Lcom/android/settings/wifi/WifiBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 111
    .local v1, "kiesThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 120
    .end local v1    # "kiesThread":Ljava/lang/Thread;
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const-string v2, "com.sec.android.intent.action.REQUEST_RESTORE_WIFIWPACONF"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    const-string v2, "WifiBackupRestore"

    const-string v3, "request restore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settings/wifi/WifiBackupRestore$WifiBRthread;-><init>(Lcom/android/settings/wifi/WifiBackupRestore;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 117
    .restart local v1    # "kiesThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
