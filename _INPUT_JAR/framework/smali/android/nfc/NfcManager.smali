.class public final Landroid/nfc/NfcManager;
.super Ljava/lang/Object;
.source "NfcManager.java"


# instance fields
.field private mAdapter:Landroid/nfc/NfcAdapter;

.field private mIsBinded:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v3, p0, Landroid/nfc/NfcManager;->mIsBinded:Z

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 49
    if-nez p1, :cond_14

    .line 50
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context not associated with any application (using a mock context?)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    :cond_14
    :try_start_14
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 55
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/nfc/NfcManager;->mIsBinded:Z
    :try_end_1b
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_14 .. :try_end_1b} :catch_1e

    .line 61
    :goto_1b
    iput-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    .line 62
    return-void

    .line 56
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :catch_1e
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    const/4 v0, 0x0

    .line 59
    .restart local v0    # "adapter":Landroid/nfc/NfcAdapter;
    iput-boolean v3, p0, Landroid/nfc/NfcManager;->mIsBinded:Z

    goto :goto_1b
.end method


# virtual methods
.method public bindNfcService(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    iget-boolean v2, p0, Landroid/nfc/NfcManager;->mIsBinded:Z

    if-eqz v2, :cond_5

    .line 89
    :goto_4
    return-void

    .line 74
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 75
    if-nez p1, :cond_13

    .line 76
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "context not associated with any application (using a mock context?)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_13
    :try_start_13
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 81
    .local v0, "adapter":Landroid/nfc/NfcAdapter;
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/nfc/NfcManager;->mIsBinded:Z
    :try_end_1a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_13 .. :try_end_1a} :catch_1d

    .line 88
    :goto_1a
    iput-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    goto :goto_4

    .line 82
    .end local v0    # "adapter":Landroid/nfc/NfcAdapter;
    :catch_1d
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    const/4 v0, 0x0

    .line 85
    .restart local v0    # "adapter":Landroid/nfc/NfcAdapter;
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/nfc/NfcManager;->mIsBinded:Z

    goto :goto_1a
.end method

.method public getDefaultAdapter()Landroid/nfc/NfcAdapter;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Landroid/nfc/NfcManager;->mAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method
