.class public Lcom/android/services/SecurityBridge/api/ClipboardManagerMonitor;
.super Ljava/lang/Object;
.source "ClipboardManagerMonitor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public approvePasteRequest(ILandroid/content/ClipData;)Z
    .registers 4
    .param p1, "appID"    # I
    .param p2, "clipData"    # Landroid/content/ClipData;

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public notifyCopy(ILandroid/content/ClipData;)V
    .registers 3
    .param p1, "appID"    # I
    .param p2, "clipData"    # Landroid/content/ClipData;

    .prologue
    .line 59
    return-void
.end method
