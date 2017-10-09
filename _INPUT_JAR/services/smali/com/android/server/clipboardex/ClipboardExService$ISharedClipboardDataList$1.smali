.class Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList$1;
.super Landroid/sec/clipboard/data/IClipboardDataList$Stub;
.source "ClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;


# direct methods
.method constructor <init>(Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;)V
    .registers 2

    .prologue
    .line 1579
    iput-object p1, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList$1;->this$1:Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;

    invoke-direct {p0}, Landroid/sec/clipboard/data/IClipboardDataList$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1591
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList$1;->this$1:Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;

    invoke-virtual {v0, p1}, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    return-object v0
.end method

.method public getScrapItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1596
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList$1;->this$1:Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;

    invoke-virtual {v0, p1}, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->getScrapItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    return-object v0
.end method

.method public removeData(I)Z
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList$1;->this$1:Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;

    invoke-virtual {v0, p1}, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->removeData(I)Z

    move-result v0

    return v0
.end method

.method public removeScrapData(I)Z
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1605
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList$1;->this$1:Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;

    invoke-virtual {v0, p1}, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->removeScrapData(I)Z

    move-result v0

    return v0
.end method

.method public scrapSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1587
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList$1;->this$1:Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;

    invoke-virtual {v0}, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->scrapSize()I

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList$1;->this$1:Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;

    invoke-virtual {v0}, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->size()I

    move-result v0

    return v0
.end method

.method public updateData(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 4
    .param p1, "index"    # I
    .param p2, "clipData"    # Landroid/sec/clipboard/data/ClipboardData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList$1;->this$1:Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->updateData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    return v0
.end method

.method public updateScrapData(ILandroid/sec/clipboard/data/ClipboardData;)Z
    .registers 4
    .param p1, "index"    # I
    .param p2, "clipData"    # Landroid/sec/clipboard/data/ClipboardData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1614
    iget-object v0, p0, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList$1;->this$1:Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/clipboardex/ClipboardExService$ISharedClipboardDataList;->updateScrapData(ILandroid/sec/clipboard/data/ClipboardData;)Z

    move-result v0

    return v0
.end method
