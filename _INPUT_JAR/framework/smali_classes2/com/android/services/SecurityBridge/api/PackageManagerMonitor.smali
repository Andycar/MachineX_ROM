.class public Lcom/android/services/SecurityBridge/api/PackageManagerMonitor;
.super Ljava/lang/Object;
.source "PackageManagerMonitor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public approveAppInstallRequest(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "apkFilePath"    # Ljava/lang/String;
    .param p2, "originalAPKFilePath"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v0, 0x1

    return v0
.end method
