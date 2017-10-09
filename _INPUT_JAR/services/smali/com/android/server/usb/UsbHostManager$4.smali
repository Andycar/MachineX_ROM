.class Lcom/android/server/usb/UsbHostManager$4;
.super Landroid/os/UEventObserver;
.source "UsbHostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbHostManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbHostManager;)V
    .registers 2

    .prologue
    .line 675
    iput-object p1, p0, Lcom/android/server/usb/UsbHostManager$4;->this$0:Lcom/android/server/usb/UsbHostManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 22
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 680
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$4;->this$0:Lcom/android/server/usb/UsbHostManager;

    # getter for: Lcom/android/server/usb/UsbHostManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/usb/UsbHostManager;->access$600(Lcom/android/server/usb/UsbHostManager;)Ljava/lang/Object;

    move-result-object v18

    monitor-enter v18

    .line 681
    :try_start_9
    const-string v1, "DEVPATH"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 682
    .local v10, "devPath":Ljava/lang/String;
    const-string v1, "ACTION"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 683
    .local v2, "action":Ljava/lang/String;
    const-string v1, "DEVTYPE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 684
    .local v12, "devtype":Ljava/lang/String;
    const-string v1, "DEVICE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 685
    .local v11, "device":Ljava/lang/String;
    const-string v1, "PRODUCT"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 686
    .local v15, "product":Ljava/lang/String;
    const-string v1, "TYPE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 687
    .local v17, "type":Ljava/lang/String;
    const-string v1, "INTERFACE"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_9 .. :try_end_40} :catchall_77

    move-result-object v14

    .line 695
    .local v14, "interfac":Ljava/lang/String;
    :try_start_41
    const-string v1, "/"

    invoke-virtual {v14, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 696
    .local v16, "tok":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v7, v16, v1

    .line 697
    .local v7, "Class":Ljava/lang/String;
    const/4 v1, 0x1

    aget-object v9, v16, v1

    .line 698
    .local v9, "SubClass":Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v8, v16, v1
    :try_end_50
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_50} :catch_7a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_41 .. :try_end_50} :catch_9a
    .catchall {:try_start_41 .. :try_end_50} :catchall_77

    .line 700
    .local v8, "Protocal":Ljava/lang/String;
    if-eqz v7, :cond_56

    if-eqz v9, :cond_56

    if-nez v8, :cond_58

    :cond_56
    :try_start_56
    monitor-exit v18
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_77

    .line 714
    .end local v7    # "Class":Ljava/lang/String;
    .end local v8    # "Protocal":Ljava/lang/String;
    .end local v9    # "SubClass":Ljava/lang/String;
    .end local v16    # "tok":[Ljava/lang/String;
    :goto_57
    return-void

    .line 702
    .restart local v7    # "Class":Ljava/lang/String;
    .restart local v8    # "Protocal":Ljava/lang/String;
    .restart local v9    # "SubClass":Ljava/lang/String;
    .restart local v16    # "tok":[Ljava/lang/String;
    :cond_58
    const/4 v1, 0x0

    :try_start_59
    aget-object v1, v16, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 703
    .local v3, "iClass":I
    const/4 v1, 0x1

    aget-object v1, v16, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 704
    .local v4, "iSubClass":I
    const/4 v1, 0x2

    aget-object v1, v16, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 706
    .local v5, "iProtocal":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/usb/UsbHostManager$4;->this$0:Lcom/android/server/usb/UsbHostManager;

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usb/UsbHostManager;->displayNotification(Ljava/lang/String;IIIZ)V
    :try_end_75
    .catch Ljava/lang/NumberFormatException; {:try_start_59 .. :try_end_75} :catch_7a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_59 .. :try_end_75} :catch_9a
    .catchall {:try_start_59 .. :try_end_75} :catchall_77

    .line 713
    .end local v3    # "iClass":I
    .end local v4    # "iSubClass":I
    .end local v5    # "iProtocal":I
    .end local v7    # "Class":Ljava/lang/String;
    .end local v8    # "Protocal":Ljava/lang/String;
    .end local v9    # "SubClass":Ljava/lang/String;
    .end local v16    # "tok":[Ljava/lang/String;
    :goto_75
    :try_start_75
    monitor-exit v18

    goto :goto_57

    .end local v2    # "action":Ljava/lang/String;
    .end local v10    # "devPath":Ljava/lang/String;
    .end local v11    # "device":Ljava/lang/String;
    .end local v12    # "devtype":Ljava/lang/String;
    .end local v14    # "interfac":Ljava/lang/String;
    .end local v15    # "product":Ljava/lang/String;
    .end local v17    # "type":Ljava/lang/String;
    :catchall_77
    move-exception v1

    monitor-exit v18
    :try_end_79
    .catchall {:try_start_75 .. :try_end_79} :catchall_77

    throw v1

    .line 707
    .restart local v2    # "action":Ljava/lang/String;
    .restart local v10    # "devPath":Ljava/lang/String;
    .restart local v11    # "device":Ljava/lang/String;
    .restart local v12    # "devtype":Ljava/lang/String;
    .restart local v14    # "interfac":Ljava/lang/String;
    .restart local v15    # "product":Ljava/lang/String;
    .restart local v17    # "type":Ljava/lang/String;
    :catch_7a
    move-exception v13

    .line 708
    .local v13, "e":Ljava/lang/NumberFormatException;
    :try_start_7b
    # getter for: Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Could not parse state or devPath from event "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 709
    .end local v13    # "e":Ljava/lang/NumberFormatException;
    :catch_9a
    move-exception v13

    .line 710
    .local v13, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    # getter for: Lcom/android/server/usb/UsbHostManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbHostManager;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ArrayIndexOutOfBoundsException "

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catchall {:try_start_7b .. :try_end_b7} :catchall_77

    goto :goto_75
.end method
