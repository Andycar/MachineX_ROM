.class Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData;
.super Ljava/lang/Object;
.source "MiscPolicy.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/general/MiscPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClearClipboardData"
.end annotation


# instance fields
.field private final mBinder:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 1584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1585
    new-instance v0, Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData$1;-><init>(Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData;)V

    iput-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData;->mBinder:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/enterprise/general/MiscPolicy$1;

    .prologue
    .line 1584
    invoke-direct {p0}, Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData;->mBinder:Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;

    return-object v0
.end method

.method public setClipboardDataListChange(I)V
    .registers 4
    .param p1, "changeFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1612
    const-string v0, "MiscPolicy"

    const-string/jumbo v1, "setClipboardDataListChange"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    return-void
.end method

.method public setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V
    .registers 7
    .param p1, "clipboardDataMgr"    # Landroid/sec/clipboard/data/IClipboardDataList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1617
    const-string v2, "MiscPolicy"

    const-string/jumbo v3, "setClipboardDataMgr"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    invoke-interface {p1}, Landroid/sec/clipboard/data/IClipboardDataList;->size()I

    move-result v1

    .line 1619
    .local v1, "size":I
    const-string v2, "MiscPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "size : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_26
    if-ge v0, v1, :cond_32

    .line 1621
    sub-int v2, v1, v0

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Landroid/sec/clipboard/data/IClipboardDataList;->removeData(I)Z

    .line 1620
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 1623
    :cond_32
    return-void
.end method

.method public setClipboardDataUiEvent(Landroid/sec/clipboard/IClipboardDataUiEvent;)V
    .registers 4
    .param p1, "clbEvent"    # Landroid/sec/clipboard/IClipboardDataUiEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1627
    const-string v0, "MiscPolicy"

    const-string/jumbo v1, "setClipboardDataUiEvent"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1628
    return-void
.end method
