.class public Lcom/android/server/updates/CertPinInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "CertPinInstallReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    .line 22
    const-string v0, "/data/misc/keychain/"

    const-string/jumbo v1, "pins"

    const-string v2, "metadata/"

    const-string/jumbo v3, "version"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method
