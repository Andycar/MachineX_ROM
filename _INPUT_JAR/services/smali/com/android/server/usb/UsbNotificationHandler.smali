.class public Lcom/android/server/usb/UsbNotificationHandler;
.super Landroid/os/Handler;
.source "UsbNotificationHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;,
        Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    }
.end annotation


# static fields
.field private static final MSG_EXPIRED_USBDEVICE:I = 0x2

.field private static final MSG_UPDATE_USBDEVICE:I = 0x1


# instance fields
.field private final DEBUG:Z

.field private final DELAY:I

.field private final TAG:Ljava/lang/String;

.field private final mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mReady:Z

.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/String;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/os/Looper;
    .param p3, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 44
    iput-boolean v1, p0, Lcom/android/server/usb/UsbNotificationHandler;->DEBUG:Z

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    .line 48
    iput-boolean v1, p0, Lcom/android/server/usb/UsbNotificationHandler;->mReady:Z

    .line 49
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->DELAY:I

    .line 59
    new-instance v0, Lcom/android/server/usb/UsbNotificationHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbNotificationHandler$1;-><init>(Lcom/android/server/usb/UsbNotificationHandler;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    new-instance v0, Lcom/android/server/usb/UsbNotificationHandler$2;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbNotificationHandler$2;-><init>(Lcom/android/server/usb/UsbNotificationHandler;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 53
    iput-object p3, p0, Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/android/server/usb/UsbNotificationHandler;->mContext:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler;->mBootCompletedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 56
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler;->mLocaleChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbNotificationHandler;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbNotificationHandler;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbNotificationHandler;III)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/usb/UsbNotificationHandler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/usb/UsbNotificationHandler;->sendMessageDelayed(III)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbNotificationHandler;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbNotificationHandler;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/server/usb/UsbNotificationHandler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private sendMessageDelayed(III)V
    .registers 8
    .param p1, "what"    # I
    .param p2, "arg"    # I
    .param p3, "delay"    # I

    .prologue
    .line 109
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 110
    .local v0, "m":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 111
    int-to-long v2, p3

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/server/usb/UsbNotificationHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 112
    return-void
.end method


# virtual methods
.method public clearAllNotificaton()V
    .registers 4

    .prologue
    .line 168
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 169
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 170
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 171
    .local v1, "key":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbNotificationHandler;->clearNotification(I)V

    goto :goto_a

    .line 173
    .end local v1    # "key":Ljava/lang/Integer;
    :cond_1e
    return-void
.end method

.method public clearNotification(I)V
    .registers 5
    .param p1, "key"    # I

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 178
    iget-object v1, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;

    .line 179
    .local v0, "work":Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    iget-boolean v1, p0, Lcom/android/server/usb/UsbNotificationHandler;->mReady:Z

    if-nez v1, :cond_20

    .line 180
    invoke-virtual {v0}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->clearAll()V

    .line 186
    .end local v0    # "work":Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    :cond_1f
    :goto_1f
    return-void

    .line 182
    .restart local v0    # "work":Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    :cond_20
    invoke-virtual {v0}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->notStayNofication()V

    goto :goto_1f
.end method

.method public clearNotification(Ljava/lang/String;)V
    .registers 4
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 190
    .local v0, "key":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbNotificationHandler;->clearNotification(I)V

    .line 191
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 522
    const-string v3, "  Notification : "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 523
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    ready : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/usb/UsbNotificationHandler;->mReady:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 525
    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 526
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_64

    .line 527
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 528
    .local v1, "key":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;

    .line 529
    .local v2, "work":Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->getStringId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->countLists()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_27

    .line 531
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v2    # "work":Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    :cond_64
    return-void
.end method

.method public enqueueNotification(IIIZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIIZLjava/lang/String;)V
    .registers 27
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I
    .param p3, "icon"    # I
    .param p4, "dismissable"    # Z
    .param p5, "expandedIntent1"    # Landroid/app/PendingIntent;
    .param p6, "expandedIntent2"    # Landroid/app/PendingIntent;
    .param p7, "expandedTitleId1"    # I
    .param p8, "expandedTitleId2"    # I
    .param p9, "expandedIcon1"    # I
    .param p10, "expandedIcon2"    # I
    .param p11, "keep"    # Z
    .param p12, "szId"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p12

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIIZLjava/lang/String;)V

    .line 120
    return-void
.end method

.method public enqueueNotification(IIIZLandroid/app/PendingIntent;ZLjava/lang/String;)V
    .registers 22
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I
    .param p3, "icon"    # I
    .param p4, "dismissable"    # Z
    .param p5, "pi"    # Landroid/app/PendingIntent;
    .param p6, "keep"    # Z
    .param p7, "szId"    # Ljava/lang/String;

    .prologue
    .line 127
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIIZLjava/lang/String;)V

    .line 128
    return-void
.end method

.method public enqueueNotification(IIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIIZLjava/lang/String;)V
    .registers 34
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I
    .param p3, "icon"    # I
    .param p4, "visible"    # Z
    .param p5, "dismissable"    # Z
    .param p6, "expandedIntent1"    # Landroid/app/PendingIntent;
    .param p7, "expandedIntent2"    # Landroid/app/PendingIntent;
    .param p8, "expandedTitleId1"    # I
    .param p9, "expandedTitleId2"    # I
    .param p10, "expandedIcon1"    # I
    .param p11, "expandedIcon2"    # I
    .param p12, "keep"    # Z
    .param p13, "device"    # Ljava/lang/String;

    .prologue
    .line 136
    new-instance v3, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move/from16 v15, p11

    move/from16 v16, p12

    move-object/from16 v17, p13

    invoke-direct/range {v3 .. v17}, Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;-><init>(Lcom/android/server/usb/UsbNotificationHandler;IIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIIZLjava/lang/String;)V

    .line 137
    .local v3, "unit":Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;
    invoke-virtual/range {p13 .. p13}, Ljava/lang/String;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 138
    .local v18, "key":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_47

    .line 139
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;

    .line 140
    .local v19, "work":Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->push(Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;)V

    .line 146
    :goto_46
    return-void

    .line 142
    .end local v19    # "work":Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    :cond_47
    new-instance v19, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p13

    invoke-direct {v0, v1, v2}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;-><init>(Lcom/android/server/usb/UsbNotificationHandler;Ljava/lang/String;)V

    .line 143
    .restart local v19    # "work":Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->push(Lcom/android/server/usb/UsbNotificationHandler$NotificatoinUnit;)V

    goto :goto_46
.end method

.method public enqueueNotification(IIIZZLjava/lang/String;)V
    .registers 21
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I
    .param p3, "icon"    # I
    .param p4, "dismissable"    # Z
    .param p5, "keep"    # Z
    .param p6, "szId"    # Ljava/lang/String;

    .prologue
    .line 123
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/usb/UsbNotificationHandler;->enqueueNotification(IIIZZLandroid/app/PendingIntent;Landroid/app/PendingIntent;IIIIZLjava/lang/String;)V

    .line 124
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 82
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_84

    .line 106
    :cond_5
    :goto_5
    return-void

    .line 84
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 86
    .local v0, "key":I
    iget-boolean v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->mReady:Z

    if-eqz v2, :cond_5

    .line 87
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 88
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;

    .line 89
    .local v1, "work":Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    invoke-virtual {v1}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->update()V

    goto :goto_5

    .line 91
    .end local v1    # "work":Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    :cond_28
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_UPDATE_USBDEVICE : can\'t have a key ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 95
    .end local v0    # "key":I
    :pswitch_47
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 97
    .restart local v0    # "key":I
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 98
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;

    .line 99
    .restart local v1    # "work":Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    invoke-virtual {v1}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->remove()V

    goto :goto_5

    .line 101
    .end local v1    # "work":Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    :cond_65
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_EXPIRED_USBDEVICE : can\'t have a key ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 82
    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_6
        :pswitch_47
    .end packed-switch
.end method

.method public readyNotification()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 148
    iput-boolean v4, p0, Lcom/android/server/usb/UsbNotificationHandler;->mReady:Z

    .line 149
    iget-object v2, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 150
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 151
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 152
    .local v1, "key":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/usb/UsbNotificationHandler;->sendMessageDelayed(III)V

    goto :goto_d

    .line 154
    .end local v1    # "key":Ljava/lang/Integer;
    :cond_22
    return-void
.end method

.method public reflashNotificaton()V
    .registers 5

    .prologue
    .line 158
    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 159
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 160
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 161
    .local v1, "key":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/server/usb/UsbNotificationHandler;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;

    .line 162
    .local v2, "work":Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    invoke-virtual {v2}, Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;->reflash()V

    goto :goto_a

    .line 164
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v2    # "work":Lcom/android/server/usb/UsbNotificationHandler$NotificationWorking;
    :cond_22
    return-void
.end method
