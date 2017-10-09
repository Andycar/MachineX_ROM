.class Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData$1;
.super Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;
.source "MiscPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData;)V
    .registers 2

    .prologue
    .line 1585
    iput-object p1, p0, Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData$1;->this$0:Lcom/android/server/enterprise/general/MiscPolicy$ClearClipboardData;

    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardWorkingFormUiInterface$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setClipboardDataListChange(I)V
    .registers 4
    .param p1, "changeFlag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1589
    const-string v0, "MiscPolicy"

    const-string/jumbo v1, "setClipboardDataListChange"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1590
    return-void
.end method

.method public setClipboardDataMgr(Landroid/sec/clipboard/data/IClipboardDataList;)V
    .registers 4
    .param p1, "clipboardDataMgr"    # Landroid/sec/clipboard/data/IClipboardDataList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1595
    const-string v0, "MiscPolicy"

    const-string/jumbo v1, "setClipboardDataMgr"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
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
    .line 1601
    const-string v0, "MiscPolicy"

    const-string/jumbo v1, "setClipboardDataUiEvent"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    return-void
.end method
