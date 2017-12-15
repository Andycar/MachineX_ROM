.class public Landroid/app/BarBeamService;
.super Landroid/app/IBarBeamService$Stub;
.source "BarBeamService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/BarBeamService$Listener;,
        Landroid/app/BarBeamService$CheckStatusThread;
    }
.end annotation


# static fields
.field static FAIL:Z = false

.field private static final PERMISSION_BARCODE_READ:Ljava/lang/String; = "com.samsung.permission.BARCODE_READ"

.field static SUCCESS:Z = false

.field private static final TAG:Ljava/lang/String; = "BarBeamService"

.field private static bEnabled:Z

.field static result:Z


# instance fields
.field private final DATA_COMMAND:B

.field private final LED_NOTIF_ID:I

.field private final MAX_SEQUENCE_REGISTER:I

.field private final MSG_START_LED_NOTIFY:I

.field private final MSG_STOP_BEAMING:I

.field private final MSG_STOP_LED_NOTIFY:I

.field private final NUM_HOPS_VERSION_COMMAND:B

.field private final SEQUENCE_REGISTER_LENGTH:B

.field private final SEQUENCE_REGISTER_START:B

.field private final START_STOP_COMMAND:B

.field private final SYSFS_BARCODE_CONTROL:Ljava/lang/String;

.field private final SYSFS_BARCODE_ENABLE:Ljava/lang/String;

.field private final SYSFS_BARCODE_LED_STATUS:Ljava/lang/String;

.field private callbacks:Landroid/app/IBarBeamListener;

.field private isRunning:Z

.field private mBeamLength:B

.field private final mContext:Landroid/content/Context;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/BarBeamService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field mMsgHandler:Landroid/os/Handler;

.field mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/BarBeamService;->SUCCESS:Z

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/BarBeamService;->FAIL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 253
    invoke-direct {p0}, Landroid/app/IBarBeamService$Stub;-><init>()V

    .line 57
    iput-object v1, p0, Landroid/app/BarBeamService;->callbacks:Landroid/app/IBarBeamListener;

    .line 65
    iput-byte v2, p0, Landroid/app/BarBeamService;->mBeamLength:B

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    .line 68
    iput-byte v2, p0, Landroid/app/BarBeamService;->DATA_COMMAND:B

    .line 69
    const/16 v0, -0x7f

    iput-byte v0, p0, Landroid/app/BarBeamService;->SEQUENCE_REGISTER_START:B

    .line 70
    const/4 v0, 0x7

    iput-byte v0, p0, Landroid/app/BarBeamService;->SEQUENCE_REGISTER_LENGTH:B

    .line 71
    const/16 v0, 0x12

    iput v0, p0, Landroid/app/BarBeamService;->MAX_SEQUENCE_REGISTER:I

    .line 72
    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/app/BarBeamService;->START_STOP_COMMAND:B

    .line 73
    const/16 v0, -0x80

    iput-byte v0, p0, Landroid/app/BarBeamService;->NUM_HOPS_VERSION_COMMAND:B

    .line 74
    iput-object v1, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    .line 78
    const/16 v0, 0x1428

    iput v0, p0, Landroid/app/BarBeamService;->LED_NOTIF_ID:I

    .line 80
    const-string v0, "/sys/class/sensors/proximity_sensor/barcode_emul_en"

    iput-object v0, p0, Landroid/app/BarBeamService;->SYSFS_BARCODE_ENABLE:Ljava/lang/String;

    .line 81
    const-string v0, "/sys/class/sec/sec_barcode_emul/barcode_send"

    iput-object v0, p0, Landroid/app/BarBeamService;->SYSFS_BARCODE_CONTROL:Ljava/lang/String;

    .line 82
    const-string v0, "/sys/class/sec/sec_barcode_emul/barcode_led_status"

    iput-object v0, p0, Landroid/app/BarBeamService;->SYSFS_BARCODE_LED_STATUS:Ljava/lang/String;

    .line 84
    const/16 v0, 0x1e

    iput v0, p0, Landroid/app/BarBeamService;->MSG_START_LED_NOTIFY:I

    .line 85
    const/16 v0, 0x28

    iput v0, p0, Landroid/app/BarBeamService;->MSG_STOP_LED_NOTIFY:I

    .line 86
    const/16 v0, 0x32

    iput v0, p0, Landroid/app/BarBeamService;->MSG_STOP_BEAMING:I

    .line 188
    new-instance v0, Landroid/app/BarBeamService$1;

    invoke-direct {v0, p0}, Landroid/app/BarBeamService$1;-><init>(Landroid/app/BarBeamService;)V

    iput-object v0, p0, Landroid/app/BarBeamService;->mMsgHandler:Landroid/os/Handler;

    .line 254
    const-string v0, "BarBeamService"

    const-string v1, "BarBeamService : Create"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iput-object p1, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    .line 256
    iput-boolean v2, p0, Landroid/app/BarBeamService;->isRunning:Z

    .line 258
    new-instance v0, Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v1, p0, Landroid/app/BarBeamService;->mMsgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Landroid/app/BarBeamService$CheckStatusThread;-><init>(Landroid/app/BarBeamService;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    .line 260
    iget-object v0, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    invoke-virtual {v0}, Landroid/app/BarBeamService$CheckStatusThread;->start()V

    .line 261
    return-void
.end method

.method static synthetic access$002(Landroid/app/BarBeamService;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/app/BarBeamService;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Landroid/app/BarBeamService;->isRunning:Z

    return p1
.end method

.method static synthetic access$100(Landroid/app/BarBeamService;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/app/BarBeamService;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/app/BarBeamService;->setLEDNotification(Z)V

    return-void
.end method

.method private setLEDNotification(Z)V
    .registers 11
    .param p1, "ledOn"    # Z

    .prologue
    const/16 v8, 0x1428

    const/16 v7, 0x1f4

    const/16 v6, 0xff

    const/4 v5, 0x0

    .line 89
    const-string v2, "BarBeamService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLEDNotification() LED ON : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v2, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 91
    .local v1, "notifMgr":Landroid/app/NotificationManager;
    if-eqz p1, :cond_4b

    .line 92
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 93
    .local v0, "notif":Landroid/app/Notification;
    invoke-static {v6, v5, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    iput v2, v0, Landroid/app/Notification;->ledARGB:I

    .line 94
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 95
    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v0, Landroid/app/Notification;->flags:I

    .line 96
    iput v7, v0, Landroid/app/Notification;->ledOnMS:I

    .line 97
    iput v7, v0, Landroid/app/Notification;->ledOffMS:I

    .line 98
    invoke-virtual {v1, v8, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 102
    .end local v0    # "notif":Landroid/app/Notification;
    :goto_4a
    return-void

    .line 100
    :cond_4b
    invoke-virtual {v1, v8}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_4a
.end method


# virtual methods
.method public addListener(Landroid/os/IBinder;)V
    .registers 11
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 693
    const/4 v0, 0x0

    .line 694
    .local v0, "callback":Landroid/app/IBarBeamListener;
    const/4 v4, 0x0

    .line 696
    .local v4, "l":Landroid/app/BarBeamService$Listener;
    iget-object v8, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 697
    :try_start_5
    iget-object v7, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/BarBeamService$Listener;

    .line 698
    .local v6, "listener":Landroid/app/BarBeamService$Listener;
    iget-object v7, v6, Landroid/app/BarBeamService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v7, :cond_b

    .line 699
    monitor-exit v8

    .line 719
    .end local v6    # "listener":Landroid/app/BarBeamService$Listener;
    :goto_1c
    return-void

    .line 702
    :cond_1d
    if-nez v4, :cond_3d

    .line 703
    new-instance v5, Landroid/app/BarBeamService$Listener;

    invoke-direct {v5, p0, p1}, Landroid/app/BarBeamService$Listener;-><init>(Landroid/app/BarBeamService;Landroid/os/IBinder;)V
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_3f

    .line 704
    .end local v4    # "l":Landroid/app/BarBeamService$Listener;
    .local v5, "l":Landroid/app/BarBeamService$Listener;
    const/4 v7, 0x0

    :try_start_25
    invoke-interface {p1, v5, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 705
    iget-object v7, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    const-string v2, ""
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_42

    .line 710
    .local v2, "client":Ljava/lang/String;
    :try_start_2f
    invoke-static {p1}, Landroid/app/IBarBeamListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBarBeamListener;

    move-result-object v1

    .line 711
    .local v1, "cb":Landroid/app/IBarBeamListener;
    invoke-interface {v1}, Landroid/app/IBarBeamListener;->getListenerInfo()Ljava/lang/String;
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_36} :catch_45
    .catchall {:try_start_2f .. :try_end_36} :catchall_42

    move-result-object v2

    .line 715
    .end local v1    # "cb":Landroid/app/IBarBeamListener;
    :goto_37
    :try_start_37
    iget-object v7, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/lang/Object;->notify()V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_42

    move-object v4, v5

    .line 718
    .end local v2    # "client":Ljava/lang/String;
    .end local v5    # "l":Landroid/app/BarBeamService$Listener;
    .restart local v4    # "l":Landroid/app/BarBeamService$Listener;
    :cond_3d
    :try_start_3d
    monitor-exit v8

    goto :goto_1c

    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_3f
    move-exception v7

    :goto_40
    monitor-exit v8
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_3f

    throw v7

    .end local v4    # "l":Landroid/app/BarBeamService$Listener;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "l":Landroid/app/BarBeamService$Listener;
    :catchall_42
    move-exception v7

    move-object v4, v5

    .end local v5    # "l":Landroid/app/BarBeamService$Listener;
    .restart local v4    # "l":Landroid/app/BarBeamService$Listener;
    goto :goto_40

    .line 712
    .end local v4    # "l":Landroid/app/BarBeamService$Listener;
    .restart local v2    # "client":Ljava/lang/String;
    .restart local v5    # "l":Landroid/app/BarBeamService$Listener;
    :catch_45
    move-exception v7

    goto :goto_37
.end method

.method public getCurrentStatus()Z
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 109
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v4, "strstatus":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 111
    .local v1, "reader":Ljava/io/BufferedReader;
    const-string v6, ""

    .line 112
    .local v6, "ver":Ljava/lang/String;
    sget-boolean v3, Landroid/app/BarBeamService;->SUCCESS:Z

    .line 114
    .local v3, "result":Z
    monitor-enter p0

    .line 116
    :try_start_c
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    const-string v8, "/sys/class/sec/sec_barcode_emul/barcode_led_status"

    invoke-direct {v7, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x400

    invoke-direct {v2, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_1a} :catch_d7
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1a} :catch_6a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_8c
    .catchall {:try_start_c .. :try_end_1a} :catchall_ae

    .line 117
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 119
    .local v5, "temp":Ljava/lang/String;
    :goto_1b
    :try_start_1b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_41

    .line 120
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_24} :catch_25
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_24} :catch_d4
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_24} :catch_d1
    .catchall {:try_start_1b .. :try_end_24} :catchall_ce

    goto :goto_1b

    .line 122
    :catch_25
    move-exception v0

    move-object v1, v2

    .line 123
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "temp":Ljava/lang/String;
    .local v0, "ex":Ljava/io/FileNotFoundException;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :goto_27
    :try_start_27
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 124
    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_ae

    .line 132
    if-eqz v1, :cond_3f

    .line 134
    :try_start_2e
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 135
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 136
    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v9, :cond_5f

    .line 137
    sget-boolean v3, Landroid/app/BarBeamService;->SUCCESS:Z
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_3f} :catch_62
    .catchall {:try_start_2e .. :try_end_3f} :catchall_67

    .line 146
    .end local v0    # "ex":Ljava/io/FileNotFoundException;
    :cond_3f
    :goto_3f
    :try_start_3f
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_67

    .line 148
    return v3

    .line 132
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "temp":Ljava/lang/String;
    :cond_41
    if-eqz v2, :cond_da

    .line 134
    :try_start_43
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 135
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 136
    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v9, :cond_56

    .line 137
    sget-boolean v3, Landroid/app/BarBeamService;->SUCCESS:Z

    :goto_54
    move-object v1, v2

    .line 143
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_3f

    .line 139
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :cond_56
    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_58
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_58} :catch_59
    .catchall {:try_start_43 .. :try_end_58} :catchall_cb

    goto :goto_54

    .line 141
    :catch_59
    move-exception v0

    .line 142
    .local v0, "ex":Ljava/io/IOException;
    :try_start_5a
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_cb

    move-object v1, v2

    .line 143
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_3f

    .line 139
    .end local v5    # "temp":Ljava/lang/String;
    .local v0, "ex":Ljava/io/FileNotFoundException;
    :cond_5f
    :try_start_5f
    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_61} :catch_62
    .catchall {:try_start_5f .. :try_end_61} :catchall_67

    goto :goto_3f

    .line 141
    :catch_62
    move-exception v0

    .line 142
    .local v0, "ex":Ljava/io/IOException;
    :try_start_63
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3f

    .line 146
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_67
    move-exception v7

    :goto_68
    monitor-exit p0
    :try_end_69
    .catchall {:try_start_63 .. :try_end_69} :catchall_67

    throw v7

    .line 125
    :catch_6a
    move-exception v0

    .line 126
    .restart local v0    # "ex":Ljava/io/IOException;
    :goto_6b
    :try_start_6b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 127
    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_ae

    .line 132
    if-eqz v1, :cond_3f

    .line 134
    :try_start_72
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 135
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 136
    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v9, :cond_84

    .line 137
    sget-boolean v3, Landroid/app/BarBeamService;->SUCCESS:Z

    goto :goto_3f

    .line 139
    :cond_84
    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_86} :catch_87
    .catchall {:try_start_72 .. :try_end_86} :catchall_67

    goto :goto_3f

    .line 141
    :catch_87
    move-exception v0

    .line 142
    :try_start_88
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_67

    goto :goto_3f

    .line 128
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_8c
    move-exception v0

    .line 129
    .local v0, "ex":Ljava/lang/Exception;
    :goto_8d
    :try_start_8d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 130
    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_92
    .catchall {:try_start_8d .. :try_end_92} :catchall_ae

    .line 132
    if-eqz v1, :cond_3f

    .line 134
    :try_start_94
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 135
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 136
    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-ne v7, v9, :cond_a6

    .line 137
    sget-boolean v3, Landroid/app/BarBeamService;->SUCCESS:Z

    goto :goto_3f

    .line 139
    :cond_a6
    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_a8
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_a8} :catch_a9
    .catchall {:try_start_94 .. :try_end_a8} :catchall_67

    goto :goto_3f

    .line 141
    :catch_a9
    move-exception v0

    .line 142
    .local v0, "ex":Ljava/io/IOException;
    :try_start_aa
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ad
    .catchall {:try_start_aa .. :try_end_ad} :catchall_67

    goto :goto_3f

    .line 132
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_ae
    move-exception v7

    :goto_af
    if-eqz v1, :cond_c2

    .line 134
    :try_start_b1
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 135
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 136
    const-string v8, "1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-ne v8, v9, :cond_c3

    .line 137
    sget-boolean v3, Landroid/app/BarBeamService;->SUCCESS:Z
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_c2} :catch_c6
    .catchall {:try_start_b1 .. :try_end_c2} :catchall_67

    .line 143
    :cond_c2
    :goto_c2
    :try_start_c2
    throw v7
    :try_end_c3
    .catchall {:try_start_c2 .. :try_end_c3} :catchall_67

    .line 139
    :cond_c3
    :try_start_c3
    sget-boolean v3, Landroid/app/BarBeamService;->FAIL:Z
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c5} :catch_c6
    .catchall {:try_start_c3 .. :try_end_c5} :catchall_67

    goto :goto_c2

    .line 141
    :catch_c6
    move-exception v0

    .line 142
    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_c7
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ca
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_67

    goto :goto_c2

    .line 146
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "temp":Ljava/lang/String;
    :catchall_cb
    move-exception v7

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_68

    .line 132
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_ce
    move-exception v7

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_af

    .line 128
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_d1
    move-exception v0

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_8d

    .line 125
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_d4
    move-exception v0

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_6b

    .line 122
    .end local v5    # "temp":Ljava/lang/String;
    :catch_d7
    move-exception v0

    goto/16 :goto_27

    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "temp":Ljava/lang/String;
    :cond_da
    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto/16 :goto_3f
.end method

.method public isImplementationCompatible()Z
    .registers 8

    .prologue
    .line 755
    const-string v5, "BarBeamService"

    const-string v6, "isImplementationCompatible"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    const/4 v3, 0x0

    .line 758
    .local v3, "out_en":Ljava/io/FileWriter;
    const/4 v1, 0x0

    .line 760
    .local v1, "out":Ljava/io/FileOutputStream;
    sget-boolean v5, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z

    .line 762
    monitor-enter p0

    .line 764
    :try_start_e
    new-instance v4, Ljava/io/FileWriter;

    const-string v5, "/sys/class/sensors/proximity_sensor/barcode_emul_en"

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_15} :catch_40
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_56
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_69
    .catchall {:try_start_e .. :try_end_15} :catchall_7c

    .line 765
    .end local v3    # "out_en":Ljava/io/FileWriter;
    .local v4, "out_en":Ljava/io/FileWriter;
    :try_start_15
    const-string v5, "BarBeamService"

    const-string v6, "isImplementationCompatible : Enable barcode_emul_en"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_15 .. :try_end_1c} :catch_f4
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_1c} :catch_f0
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_1c} :catch_ec
    .catchall {:try_start_15 .. :try_end_1c} :catchall_e9

    .line 776
    if-eqz v4, :cond_fb

    .line 778
    :try_start_1e
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_21} :catch_3a
    .catchall {:try_start_1e .. :try_end_21} :catchall_d5

    move-object v3, v4

    .line 787
    .end local v4    # "out_en":Ljava/io/FileWriter;
    .restart local v3    # "out_en":Ljava/io/FileWriter;
    :cond_22
    :goto_22
    :try_start_22
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v5, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_29} :catch_8e
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_29} :catch_a1
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_29} :catch_b4
    .catchall {:try_start_22 .. :try_end_29} :catchall_c9

    .line 788
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_29
    const-string v5, "BarBeamService"

    const-string v6, "isImplementationCompatible : Enable barcode_send"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_30} :catch_e6
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_30} :catch_e3
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_30} :catch_e0
    .catchall {:try_start_29 .. :try_end_30} :catchall_dd

    .line 799
    if-eqz v2, :cond_f8

    .line 801
    :try_start_32
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_88
    .catchall {:try_start_32 .. :try_end_35} :catchall_d9

    move-object v1, v2

    .line 807
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    :cond_36
    :goto_36
    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_53

    .line 808
    sget-boolean v5, Landroid/app/BarBeamService;->result:Z

    return v5

    .line 779
    .end local v3    # "out_en":Ljava/io/FileWriter;
    .restart local v4    # "out_en":Ljava/io/FileWriter;
    :catch_3a
    move-exception v0

    .line 780
    .local v0, "ex":Ljava/io/IOException;
    :try_start_3b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_d5

    move-object v3, v4

    .line 781
    .end local v4    # "out_en":Ljava/io/FileWriter;
    .restart local v3    # "out_en":Ljava/io/FileWriter;
    goto :goto_22

    .line 766
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_40
    move-exception v0

    .line 767
    .local v0, "ex":Ljava/io/FileNotFoundException;
    :goto_41
    :try_start_41
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 768
    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_7c

    .line 776
    if-eqz v3, :cond_22

    .line 778
    :try_start_4a
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e
    .catchall {:try_start_4a .. :try_end_4d} :catchall_53

    goto :goto_22

    .line 779
    :catch_4e
    move-exception v0

    .line 780
    .local v0, "ex":Ljava/io/IOException;
    :try_start_4f
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    .line 807
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_53
    move-exception v5

    :goto_54
    monitor-exit p0
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_53

    throw v5

    .line 769
    :catch_56
    move-exception v0

    .line 770
    .restart local v0    # "ex":Ljava/io/IOException;
    :goto_57
    :try_start_57
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 771
    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_7c

    .line 776
    if-eqz v3, :cond_22

    .line 778
    :try_start_60
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_64
    .catchall {:try_start_60 .. :try_end_63} :catchall_53

    goto :goto_22

    .line 779
    :catch_64
    move-exception v0

    .line 780
    :try_start_65
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_53

    goto :goto_22

    .line 772
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_69
    move-exception v0

    .line 773
    .local v0, "ex":Ljava/lang/Exception;
    :goto_6a
    :try_start_6a
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 774
    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_7c

    .line 776
    if-eqz v3, :cond_22

    .line 778
    :try_start_73
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77
    .catchall {:try_start_73 .. :try_end_76} :catchall_53

    goto :goto_22

    .line 779
    :catch_77
    move-exception v0

    .line 780
    .local v0, "ex":Ljava/io/IOException;
    :try_start_78
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_53

    goto :goto_22

    .line 776
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_7c
    move-exception v5

    :goto_7d
    if-eqz v3, :cond_82

    .line 778
    :try_start_7f
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_83
    .catchall {:try_start_7f .. :try_end_82} :catchall_53

    .line 781
    :cond_82
    :goto_82
    :try_start_82
    throw v5

    .line 779
    :catch_83
    move-exception v0

    .line 780
    .restart local v0    # "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_87
    .catchall {:try_start_82 .. :try_end_87} :catchall_53

    goto :goto_82

    .line 802
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_88
    move-exception v0

    .line 803
    .restart local v0    # "ex":Ljava/io/IOException;
    :try_start_89
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_d9

    move-object v1, v2

    .line 804
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_36

    .line 789
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_8e
    move-exception v0

    .line 790
    .local v0, "ex":Ljava/io/FileNotFoundException;
    :goto_8f
    :try_start_8f
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 791
    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_96
    .catchall {:try_start_8f .. :try_end_96} :catchall_c9

    .line 799
    if-eqz v1, :cond_36

    .line 801
    :try_start_98
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_9b} :catch_9c
    .catchall {:try_start_98 .. :try_end_9b} :catchall_53

    goto :goto_36

    .line 802
    :catch_9c
    move-exception v0

    .line 803
    .local v0, "ex":Ljava/io/IOException;
    :try_start_9d
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a0
    .catchall {:try_start_9d .. :try_end_a0} :catchall_53

    goto :goto_36

    .line 792
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_a1
    move-exception v0

    .line 793
    .restart local v0    # "ex":Ljava/io/IOException;
    :goto_a2
    :try_start_a2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 794
    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_a9
    .catchall {:try_start_a2 .. :try_end_a9} :catchall_c9

    .line 799
    if-eqz v1, :cond_36

    .line 801
    :try_start_ab
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af
    .catchall {:try_start_ab .. :try_end_ae} :catchall_53

    goto :goto_36

    .line 802
    :catch_af
    move-exception v0

    .line 803
    :try_start_b0
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_53

    goto :goto_36

    .line 795
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_b4
    move-exception v0

    .line 796
    .local v0, "ex":Ljava/lang/Exception;
    :goto_b5
    :try_start_b5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 797
    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_bc
    .catchall {:try_start_b5 .. :try_end_bc} :catchall_c9

    .line 799
    if-eqz v1, :cond_36

    .line 801
    :try_start_be
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_c1} :catch_c3
    .catchall {:try_start_be .. :try_end_c1} :catchall_53

    goto/16 :goto_36

    .line 802
    :catch_c3
    move-exception v0

    .line 803
    .local v0, "ex":Ljava/io/IOException;
    :try_start_c4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c7
    .catchall {:try_start_c4 .. :try_end_c7} :catchall_53

    goto/16 :goto_36

    .line 799
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_c9
    move-exception v5

    :goto_ca
    if-eqz v1, :cond_cf

    .line 801
    :try_start_cc
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_cc .. :try_end_cf} :catch_d0
    .catchall {:try_start_cc .. :try_end_cf} :catchall_53

    .line 804
    :cond_cf
    :goto_cf
    :try_start_cf
    throw v5

    .line 802
    :catch_d0
    move-exception v0

    .line 803
    .restart local v0    # "ex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d4
    .catchall {:try_start_cf .. :try_end_d4} :catchall_53

    goto :goto_cf

    .line 807
    .end local v0    # "ex":Ljava/io/IOException;
    .end local v3    # "out_en":Ljava/io/FileWriter;
    .restart local v4    # "out_en":Ljava/io/FileWriter;
    :catchall_d5
    move-exception v5

    move-object v3, v4

    .end local v4    # "out_en":Ljava/io/FileWriter;
    .restart local v3    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_54

    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catchall_d9
    move-exception v5

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_54

    .line 799
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catchall_dd
    move-exception v5

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_ca

    .line 795
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_e0
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_b5

    .line 792
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_e3
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_a2

    .line 789
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :catch_e6
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto :goto_8f

    .line 776
    .end local v3    # "out_en":Ljava/io/FileWriter;
    .restart local v4    # "out_en":Ljava/io/FileWriter;
    :catchall_e9
    move-exception v5

    move-object v3, v4

    .end local v4    # "out_en":Ljava/io/FileWriter;
    .restart local v3    # "out_en":Ljava/io/FileWriter;
    goto :goto_7d

    .line 772
    .end local v3    # "out_en":Ljava/io/FileWriter;
    .restart local v4    # "out_en":Ljava/io/FileWriter;
    :catch_ec
    move-exception v0

    move-object v3, v4

    .end local v4    # "out_en":Ljava/io/FileWriter;
    .restart local v3    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_6a

    .line 769
    .end local v3    # "out_en":Ljava/io/FileWriter;
    .restart local v4    # "out_en":Ljava/io/FileWriter;
    :catch_f0
    move-exception v0

    move-object v3, v4

    .end local v4    # "out_en":Ljava/io/FileWriter;
    .restart local v3    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_57

    .line 766
    .end local v3    # "out_en":Ljava/io/FileWriter;
    .restart local v4    # "out_en":Ljava/io/FileWriter;
    :catch_f4
    move-exception v0

    move-object v3, v4

    .end local v4    # "out_en":Ljava/io/FileWriter;
    .restart local v3    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_41

    .end local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :cond_f8
    move-object v1, v2

    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_36

    .end local v3    # "out_en":Ljava/io/FileWriter;
    .restart local v4    # "out_en":Ljava/io/FileWriter;
    :cond_fb
    move-object v3, v4

    .end local v4    # "out_en":Ljava/io/FileWriter;
    .restart local v3    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_22
.end method

.method public removeListener(Landroid/os/IBinder;)V
    .registers 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 725
    const/4 v3, 0x0

    .line 726
    .local v3, "l":Landroid/app/BarBeamService$Listener;
    const-string v1, ""

    .line 728
    .local v1, "client":Ljava/lang/String;
    iget-object v6, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v6

    .line 729
    :try_start_6
    iget-object v5, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .line 730
    .local v4, "listener":Landroid/app/BarBeamService$Listener;
    iget-object v5, v4, Landroid/app/BarBeamService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v5, :cond_c

    .line 731
    move-object v3, v4

    .line 736
    .end local v4    # "listener":Landroid/app/BarBeamService$Listener;
    :cond_1d
    if-eqz v3, :cond_35

    .line 737
    const/4 v5, 0x0

    invoke-interface {p1, v3, v5}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 738
    iget-object v5, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_28
    .catchall {:try_start_6 .. :try_end_28} :catchall_37

    .line 741
    :try_start_28
    invoke-static {p1}, Landroid/app/IBarBeamListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBarBeamListener;

    move-result-object v0

    .line 742
    .local v0, "cb":Landroid/app/IBarBeamListener;
    invoke-interface {v0}, Landroid/app/IBarBeamListener;->getListenerInfo()Ljava/lang/String;
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_2f} :catch_3a
    .catchall {:try_start_28 .. :try_end_2f} :catchall_37

    move-result-object v1

    .line 746
    .end local v0    # "cb":Landroid/app/IBarBeamListener;
    :goto_30
    :try_start_30
    iget-object v5, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 748
    :cond_35
    monitor-exit v6

    .line 749
    return-void

    .line 748
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_37
    move-exception v5

    monitor-exit v6
    :try_end_39
    .catchall {:try_start_30 .. :try_end_39} :catchall_37

    throw v5

    .line 743
    .restart local v2    # "i$":Ljava/util/Iterator;
    :catch_3a
    move-exception v5

    goto :goto_30
.end method

.method public setBarcode([B)V
    .registers 12
    .param p1, "buffer"    # [B

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 544
    const-string v5, "BarBeamService"

    const-string/jumbo v6, "setBarcode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v5, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string v6, "com.samsung.permission.BARCODE_READ"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const/4 v3, 0x0

    .line 550
    .local v3, "out":Ljava/io/FileOutputStream;
    array-length v5, p1

    add-int/lit8 v5, v5, 0x3

    new-array v0, v5, [B

    .line 551
    .local v0, "data":[B
    sget-boolean v5, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z

    .line 552
    array-length v5, p1

    add-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    iput-byte v5, p0, Landroid/app/BarBeamService;->mBeamLength:B

    .line 554
    const-string v5, "BarBeamService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendDataTable length : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-byte v7, p0, Landroid/app/BarBeamService;->mBeamLength:B

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    aput-byte v5, v0, v9

    .line 556
    const/4 v5, 0x1

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v0, v5

    .line 558
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_53
    array-length v5, p1

    add-int/lit8 v5, v5, 0x2

    if-ge v2, v5, :cond_61

    .line 559
    add-int/lit8 v5, v2, -0x2

    aget-byte v5, p1, v5

    aput-byte v5, v0, v2

    .line 558
    add-int/lit8 v2, v2, 0x1

    goto :goto_53

    .line 561
    :cond_61
    array-length v5, p1

    add-int/lit8 v5, v5, 0x2

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    aput-byte v6, v0, v5

    .line 563
    monitor-enter p0

    .line 565
    :try_start_6f
    new-instance v4, Ljava/io/FileOutputStream;

    const-string v5, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_76
    .catch Ljava/io/FileNotFoundException; {:try_start_6f .. :try_end_76} :catch_8f
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_76} :catch_a5
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_76} :catch_b8
    .catchall {:try_start_6f .. :try_end_76} :catchall_cb

    .line 570
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_76
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 571
    const-string v5, "BarBeamService"

    const-string/jumbo v6, "setBarcode is Done!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Ljava/io/FileNotFoundException; {:try_start_76 .. :try_end_81} :catch_e3
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_81} :catch_e0
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_81} :catch_dd
    .catchall {:try_start_76 .. :try_end_81} :catchall_da

    .line 582
    if-eqz v4, :cond_e6

    .line 584
    :try_start_83
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_89
    .catchall {:try_start_83 .. :try_end_86} :catchall_d7

    move-object v3, v4

    .line 590
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_87
    :goto_87
    :try_start_87
    monitor-exit p0
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_a2

    .line 598
    return-void

    .line 585
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_89
    move-exception v1

    .line 586
    .local v1, "ex":Ljava/io/IOException;
    :try_start_8a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_d7

    move-object v3, v4

    .line 587
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_87

    .line 572
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_8f
    move-exception v1

    .line 573
    .local v1, "ex":Ljava/io/FileNotFoundException;
    :goto_90
    :try_start_90
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 574
    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_97
    .catchall {:try_start_90 .. :try_end_97} :catchall_cb

    .line 582
    if-eqz v3, :cond_87

    .line 584
    :try_start_99
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d
    .catchall {:try_start_99 .. :try_end_9c} :catchall_a2

    goto :goto_87

    .line 585
    :catch_9d
    move-exception v1

    .line 586
    .local v1, "ex":Ljava/io/IOException;
    :try_start_9e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_87

    .line 590
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_a2
    move-exception v5

    :goto_a3
    monitor-exit p0
    :try_end_a4
    .catchall {:try_start_9e .. :try_end_a4} :catchall_a2

    throw v5

    .line 575
    :catch_a5
    move-exception v1

    .line 576
    .restart local v1    # "ex":Ljava/io/IOException;
    :goto_a6
    :try_start_a6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 577
    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_ad
    .catchall {:try_start_a6 .. :try_end_ad} :catchall_cb

    .line 582
    if-eqz v3, :cond_87

    .line 584
    :try_start_af
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_b3
    .catchall {:try_start_af .. :try_end_b2} :catchall_a2

    goto :goto_87

    .line 585
    :catch_b3
    move-exception v1

    .line 586
    :try_start_b4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b7
    .catchall {:try_start_b4 .. :try_end_b7} :catchall_a2

    goto :goto_87

    .line 578
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_b8
    move-exception v1

    .line 579
    .local v1, "ex":Ljava/lang/Exception;
    :goto_b9
    :try_start_b9
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 580
    sget-boolean v5, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v5, Landroid/app/BarBeamService;->result:Z
    :try_end_c0
    .catchall {:try_start_b9 .. :try_end_c0} :catchall_cb

    .line 582
    if-eqz v3, :cond_87

    .line 584
    :try_start_c2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c5} :catch_c6
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_a2

    goto :goto_87

    .line 585
    :catch_c6
    move-exception v1

    .line 586
    .local v1, "ex":Ljava/io/IOException;
    :try_start_c7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ca
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_a2

    goto :goto_87

    .line 582
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_cb
    move-exception v5

    :goto_cc
    if-eqz v3, :cond_d1

    .line 584
    :try_start_ce
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_d1} :catch_d2
    .catchall {:try_start_ce .. :try_end_d1} :catchall_a2

    .line 587
    :cond_d1
    :goto_d1
    :try_start_d1
    throw v5

    .line 585
    :catch_d2
    move-exception v1

    .line 586
    .restart local v1    # "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d6
    .catchall {:try_start_d1 .. :try_end_d6} :catchall_a2

    goto :goto_d1

    .line 590
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_d7
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_a3

    .line 582
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_da
    move-exception v5

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_cc

    .line 578
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_dd
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_b9

    .line 575
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_e0
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_a6

    .line 572
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_e3
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_90

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_e6
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_87
.end method

.method public setHopSequence([BII)V
    .registers 18
    .param p1, "buffer"    # [B
    .param p2, "col_size"    # I
    .param p3, "row_size"    # I

    .prologue
    .line 426
    const-string v11, "BarBeamService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "sendHopSequenceTable "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " x "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v11, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string v12, "com.samsung.permission.BARCODE_READ"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const/4 v9, 0x0

    .line 433
    .local v9, "out":Ljava/io/FileOutputStream;
    const/16 v11, 0x8

    new-array v3, v11, [B

    .line 434
    .local v3, "data":[B
    const/4 v11, 0x2

    new-array v8, v11, [B

    .line 435
    .local v8, "numPacket":[B
    move/from16 v2, p2

    .line 436
    .local v2, "NP":I
    const/4 v6, 0x0

    .line 437
    .local v6, "j":I
    const/16 v1, -0x7f

    .line 438
    .local v1, "BSR":B
    sget-boolean v11, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v11, Landroid/app/BarBeamService;->result:Z

    .line 440
    const/4 v11, 0x0

    const/16 v12, -0x80

    aput-byte v12, v8, v11

    .line 441
    const/4 v11, 0x1

    and-int/lit8 v12, v2, 0x1f

    int-to-byte v12, v12

    aput-byte v12, v8, v11

    .line 443
    monitor-enter p0

    .line 445
    :try_start_4c
    new-instance v10, Ljava/io/FileOutputStream;

    const-string v11, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_4c .. :try_end_53} :catch_dd
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_53} :catch_f5
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_53} :catch_10a
    .catchall {:try_start_4c .. :try_end_53} :catchall_11f

    .line 447
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .local v10, "out":Ljava/io/FileOutputStream;
    :try_start_53
    invoke-virtual {v10, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 448
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V
    :try_end_59
    .catch Ljava/io/FileNotFoundException; {:try_start_53 .. :try_end_59} :catch_1a2
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_59} :catch_19e
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_59} :catch_19a
    .catchall {:try_start_53 .. :try_end_59} :catchall_197

    .line 459
    if-eqz v10, :cond_1a6

    .line 461
    :try_start_5b
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5e} :catch_d7
    .catchall {:try_start_5b .. :try_end_5e} :catchall_193

    move-object v9, v10

    .line 467
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :cond_5f
    :goto_5f
    :try_start_5f
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_f2

    .line 470
    const/4 v5, 0x0

    .local v5, "i":I
    move-object v10, v9

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :goto_62
    move/from16 v0, p2

    if-ge v5, v0, :cond_18a

    .line 471
    const/4 v6, 0x0

    .line 473
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .local v7, "j":I
    aput-byte v1, v3, v6

    .line 475
    mul-int v11, v5, p3

    aget-byte v11, p1, v11

    const/16 v12, 0x15

    if-le v11, v12, :cond_12b

    .line 476
    const-string v11, "BarBeamService"

    const-string v12, "not supported bw "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    const/16 v11, 0x15

    aput-byte v11, v3, v7

    .line 482
    :goto_80
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .restart local v7    # "j":I
    mul-int v11, v5, p3

    add-int/lit8 v11, v11, 0x1

    aget-byte v11, p1, v11

    aput-byte v11, v3, v6

    .line 484
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    mul-int v11, v5, p3

    add-int/lit8 v11, v11, 0x2

    aget-byte v11, p1, v11

    aput-byte v11, v3, v7

    .line 485
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .restart local v7    # "j":I
    mul-int v11, v5, p3

    add-int/lit8 v11, v11, 0x3

    aget-byte v11, p1, v11

    aput-byte v11, v3, v6

    .line 487
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    mul-int v11, v5, p3

    add-int/lit8 v11, v11, 0x4

    aget-byte v11, p1, v11

    aput-byte v11, v3, v7

    .line 489
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "j":I
    .restart local v7    # "j":I
    mul-int v11, v5, p3

    add-int/lit8 v11, v11, 0x5

    aget-byte v11, p1, v11

    aput-byte v11, v3, v6

    .line 490
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    mul-int v11, v5, p3

    add-int/lit8 v11, v11, 0x6

    aget-byte v11, p1, v11

    aput-byte v11, v3, v7

    .line 499
    add-int/lit8 v11, v1, 0x7

    int-to-byte v1, v11

    .line 502
    monitor-enter p0

    .line 504
    :try_start_c0
    new-instance v9, Ljava/io/FileOutputStream;

    const-string v11, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_c7
    .catch Ljava/io/FileNotFoundException; {:try_start_c0 .. :try_end_c7} :catch_13d
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c7} :catch_151
    .catch Ljava/lang/Exception; {:try_start_c0 .. :try_end_c7} :catch_167
    .catchall {:try_start_c0 .. :try_end_c7} :catchall_17d

    .line 507
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :try_start_c7
    invoke-virtual {v9, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 508
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->flush()V
    :try_end_cd
    .catch Ljava/io/FileNotFoundException; {:try_start_c7 .. :try_end_cd} :catch_191
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_cd} :catch_18f
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_cd} :catch_18d
    .catchall {:try_start_c7 .. :try_end_cd} :catchall_18b

    .line 519
    if-eqz v9, :cond_d2

    .line 521
    :try_start_cf
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_135
    .catchall {:try_start_cf .. :try_end_d2} :catchall_13a

    .line 527
    :cond_d2
    :goto_d2
    :try_start_d2
    monitor-exit p0
    :try_end_d3
    .catchall {:try_start_d2 .. :try_end_d3} :catchall_13a

    .line 470
    add-int/lit8 v5, v5, 0x1

    move-object v10, v9

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    goto :goto_62

    .line 462
    .end local v5    # "i":I
    :catch_d7
    move-exception v4

    .line 463
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_d8
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_db
    .catchall {:try_start_d8 .. :try_end_db} :catchall_193

    move-object v9, v10

    .line 464
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    goto :goto_5f

    .line 449
    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_dd
    move-exception v4

    .line 450
    .local v4, "ex":Ljava/io/FileNotFoundException;
    :goto_de
    :try_start_de
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 451
    sget-boolean v11, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v11, Landroid/app/BarBeamService;->result:Z
    :try_end_e5
    .catchall {:try_start_de .. :try_end_e5} :catchall_11f

    .line 459
    if-eqz v9, :cond_5f

    .line 461
    :try_start_e7
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_ea} :catch_ec
    .catchall {:try_start_e7 .. :try_end_ea} :catchall_f2

    goto/16 :goto_5f

    .line 462
    :catch_ec
    move-exception v4

    .line 463
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_ed
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5f

    .line 467
    .end local v4    # "ex":Ljava/lang/Exception;
    :catchall_f2
    move-exception v11

    :goto_f3
    monitor-exit p0
    :try_end_f4
    .catchall {:try_start_ed .. :try_end_f4} :catchall_f2

    throw v11

    .line 452
    :catch_f5
    move-exception v4

    .line 453
    .local v4, "ex":Ljava/io/IOException;
    :goto_f6
    :try_start_f6
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 454
    sget-boolean v11, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v11, Landroid/app/BarBeamService;->result:Z
    :try_end_fd
    .catchall {:try_start_f6 .. :try_end_fd} :catchall_11f

    .line 459
    if-eqz v9, :cond_5f

    .line 461
    :try_start_ff
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_102
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_102} :catch_104
    .catchall {:try_start_ff .. :try_end_102} :catchall_f2

    goto/16 :goto_5f

    .line 462
    :catch_104
    move-exception v4

    .line 463
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_105
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_108
    .catchall {:try_start_105 .. :try_end_108} :catchall_f2

    goto/16 :goto_5f

    .line 455
    .end local v4    # "ex":Ljava/lang/Exception;
    :catch_10a
    move-exception v4

    .line 456
    .restart local v4    # "ex":Ljava/lang/Exception;
    :goto_10b
    :try_start_10b
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 457
    sget-boolean v11, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v11, Landroid/app/BarBeamService;->result:Z
    :try_end_112
    .catchall {:try_start_10b .. :try_end_112} :catchall_11f

    .line 459
    if-eqz v9, :cond_5f

    .line 461
    :try_start_114
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_117} :catch_119
    .catchall {:try_start_114 .. :try_end_117} :catchall_f2

    goto/16 :goto_5f

    .line 462
    :catch_119
    move-exception v4

    .line 463
    :try_start_11a
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11d
    .catchall {:try_start_11a .. :try_end_11d} :catchall_f2

    goto/16 :goto_5f

    .line 459
    .end local v4    # "ex":Ljava/lang/Exception;
    :catchall_11f
    move-exception v11

    :goto_120
    if-eqz v9, :cond_125

    .line 461
    :try_start_122
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_125
    .catch Ljava/lang/Exception; {:try_start_122 .. :try_end_125} :catch_126
    .catchall {:try_start_122 .. :try_end_125} :catchall_f2

    .line 464
    :cond_125
    :goto_125
    :try_start_125
    throw v11

    .line 462
    :catch_126
    move-exception v4

    .line 463
    .restart local v4    # "ex":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12a
    .catchall {:try_start_125 .. :try_end_12a} :catchall_f2

    goto :goto_125

    .line 479
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v6    # "j":I
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "i":I
    .restart local v7    # "j":I
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :cond_12b
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "j":I
    .restart local v6    # "j":I
    mul-int v11, v5, p3

    aget-byte v11, p1, v11

    aput-byte v11, v3, v7

    goto/16 :goto_80

    .line 522
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :catch_135
    move-exception v4

    .line 523
    .local v4, "ex":Ljava/io/IOException;
    :try_start_136
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d2

    .line 527
    .end local v4    # "ex":Ljava/io/IOException;
    :catchall_13a
    move-exception v11

    monitor-exit p0
    :try_end_13c
    .catchall {:try_start_136 .. :try_end_13c} :catchall_13a

    throw v11

    .line 509
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catch_13d
    move-exception v4

    move-object v9, v10

    .line 510
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .local v4, "ex":Ljava/io/FileNotFoundException;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :goto_13f
    :try_start_13f
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 511
    sget-boolean v11, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v11, Landroid/app/BarBeamService;->result:Z
    :try_end_146
    .catchall {:try_start_13f .. :try_end_146} :catchall_18b

    .line 519
    if-eqz v9, :cond_d2

    .line 521
    :try_start_148
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_14b
    .catch Ljava/io/IOException; {:try_start_148 .. :try_end_14b} :catch_14c
    .catchall {:try_start_148 .. :try_end_14b} :catchall_13a

    goto :goto_d2

    .line 522
    :catch_14c
    move-exception v4

    .line 523
    .local v4, "ex":Ljava/io/IOException;
    :try_start_14d
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_150
    .catchall {:try_start_14d .. :try_end_150} :catchall_13a

    goto :goto_d2

    .line 512
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catch_151
    move-exception v4

    move-object v9, v10

    .line 513
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "ex":Ljava/io/IOException;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :goto_153
    :try_start_153
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 514
    sget-boolean v11, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v11, Landroid/app/BarBeamService;->result:Z
    :try_end_15a
    .catchall {:try_start_153 .. :try_end_15a} :catchall_18b

    .line 519
    if-eqz v9, :cond_d2

    .line 521
    :try_start_15c
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_15f
    .catch Ljava/io/IOException; {:try_start_15c .. :try_end_15f} :catch_161
    .catchall {:try_start_15c .. :try_end_15f} :catchall_13a

    goto/16 :goto_d2

    .line 522
    :catch_161
    move-exception v4

    .line 523
    :try_start_162
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_165
    .catchall {:try_start_162 .. :try_end_165} :catchall_13a

    goto/16 :goto_d2

    .line 515
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catch_167
    move-exception v4

    move-object v9, v10

    .line 516
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .local v4, "ex":Ljava/lang/Exception;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :goto_169
    :try_start_169
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 517
    sget-boolean v11, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v11, Landroid/app/BarBeamService;->result:Z
    :try_end_170
    .catchall {:try_start_169 .. :try_end_170} :catchall_18b

    .line 519
    if-eqz v9, :cond_d2

    .line 521
    :try_start_172
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_175
    .catch Ljava/io/IOException; {:try_start_172 .. :try_end_175} :catch_177
    .catchall {:try_start_172 .. :try_end_175} :catchall_13a

    goto/16 :goto_d2

    .line 522
    :catch_177
    move-exception v4

    .line 523
    .local v4, "ex":Ljava/io/IOException;
    :try_start_178
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_17b
    .catchall {:try_start_178 .. :try_end_17b} :catchall_13a

    goto/16 :goto_d2

    .line 519
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catchall_17d
    move-exception v11

    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :goto_17f
    if-eqz v9, :cond_184

    .line 521
    :try_start_181
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_184
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_184} :catch_185
    .catchall {:try_start_181 .. :try_end_184} :catchall_13a

    .line 524
    :cond_184
    :goto_184
    :try_start_184
    throw v11

    .line 522
    :catch_185
    move-exception v4

    .line 523
    .restart local v4    # "ex":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_189
    .catchall {:try_start_184 .. :try_end_189} :catchall_13a

    goto :goto_184

    .line 537
    .end local v4    # "ex":Ljava/io/IOException;
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :cond_18a
    return-void

    .line 519
    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    :catchall_18b
    move-exception v11

    goto :goto_17f

    .line 515
    :catch_18d
    move-exception v4

    goto :goto_169

    .line 512
    :catch_18f
    move-exception v4

    goto :goto_153

    .line 509
    :catch_191
    move-exception v4

    goto :goto_13f

    .line 467
    .end local v5    # "i":I
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catchall_193
    move-exception v11

    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_f3

    .line 459
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catchall_197
    move-exception v11

    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    goto :goto_120

    .line 455
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catch_19a
    move-exception v4

    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_10b

    .line 452
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catch_19e
    move-exception v4

    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_f6

    .line 449
    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :catch_1a2
    move-exception v4

    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_de

    .end local v9    # "out":Ljava/io/FileOutputStream;
    .restart local v10    # "out":Ljava/io/FileOutputStream;
    :cond_1a6
    move-object v9, v10

    .end local v10    # "out":Ljava/io/FileOutputStream;
    .restart local v9    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_5f
.end method

.method public startBeaming()V
    .registers 15

    .prologue
    const/4 v12, 0x1

    .line 268
    const-string v9, "BarBeamService"

    const-string/jumbo v10, "startBeaming"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v9, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string v10, "com.samsung.permission.BARCODE_READ"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-boolean v9, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z

    .line 275
    const/4 v7, 0x0

    .line 276
    .local v7, "out_en":Ljava/io/FileWriter;
    const/4 v5, 0x0

    .line 278
    .local v5, "out":Ljava/io/FileOutputStream;
    const/4 v9, 0x2

    new-array v0, v9, [B

    .line 279
    .local v0, "data":[B
    new-array v2, v12, [C

    .line 282
    .local v2, "flag":[C
    monitor-enter p0

    .line 284
    :try_start_1d
    new-instance v8, Ljava/io/FileWriter;

    const-string v9, "/sys/class/sensors/proximity_sensor/barcode_emul_en"

    invoke-direct {v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_24} :catch_98
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_24} :catch_ae
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_24} :catch_c3
    .catchall {:try_start_1d .. :try_end_24} :catchall_d8

    .line 285
    .end local v7    # "out_en":Ljava/io/FileWriter;
    .local v8, "out_en":Ljava/io/FileWriter;
    const/4 v9, 0x0

    const/16 v10, 0x31

    :try_start_27
    aput-char v10, v2, v9

    .line 286
    invoke-virtual {v8, v2}, Ljava/io/FileWriter;->write([C)V

    .line 287
    invoke-virtual {v8}, Ljava/io/FileWriter;->flush()V
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_2f} :catch_238
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2f} :catch_234
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2f} :catch_230
    .catchall {:try_start_27 .. :try_end_2f} :catchall_22c

    .line 299
    if-eqz v8, :cond_23f

    .line 301
    :try_start_31
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_92
    .catchall {:try_start_31 .. :try_end_34} :catchall_215

    move-object v7, v8

    .line 309
    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    :cond_35
    :goto_35
    const/4 v9, 0x0

    const/4 v10, -0x1

    :try_start_37
    aput-byte v10, v0, v9

    .line 310
    const/4 v9, 0x1

    iget-byte v10, p0, Landroid/app/BarBeamService;->mBeamLength:B

    aput-byte v10, v0, v9
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_ab

    .line 312
    :try_start_3e
    new-instance v6, Ljava/io/FileOutputStream;

    const-string v9, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_45} :catch_fa
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_45} :catch_143
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_45} :catch_18c
    .catchall {:try_start_3e .. :try_end_45} :catchall_1d5

    .line 313
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v6, "out":Ljava/io/FileOutputStream;
    :try_start_45
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 314
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 315
    const-string v9, "BarBeamService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "startBarBeam : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-byte v11, p0, Landroid/app/BarBeamService;->mBeamLength:B

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_66} :catch_228
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_66} :catch_224
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_66} :catch_220
    .catchall {:try_start_45 .. :try_end_66} :catchall_21d

    .line 326
    if-eqz v6, :cond_23c

    .line 328
    :try_start_68
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 329
    iget-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v9, :cond_f5

    .line 331
    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_72} :catch_8b
    .catchall {:try_start_68 .. :try_end_72} :catchall_219

    .line 332
    :try_start_72
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_78
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .line 333
    .local v4, "l":Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_78

    .line 336
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Landroid/app/BarBeamService$Listener;
    :catchall_88
    move-exception v9

    monitor-exit v10
    :try_end_8a
    .catchall {:try_start_72 .. :try_end_8a} :catchall_88

    :try_start_8a
    throw v9
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8b} :catch_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_219

    .line 340
    :catch_8b
    move-exception v1

    .line 341
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_8c
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_219

    move-object v5, v6

    .line 345
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :cond_90
    :goto_90
    :try_start_90
    monitor-exit p0
    :try_end_91
    .catchall {:try_start_90 .. :try_end_91} :catchall_ab

    .line 346
    return-void

    .line 302
    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :catch_92
    move-exception v1

    .line 303
    .restart local v1    # "ex":Ljava/lang/Exception;
    :try_start_93
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_96
    .catchall {:try_start_93 .. :try_end_96} :catchall_215

    move-object v7, v8

    .line 304
    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto :goto_35

    .line 289
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_98
    move-exception v1

    .line 290
    .local v1, "ex":Ljava/io/FileNotFoundException;
    :goto_99
    :try_start_99
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 291
    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_a0
    .catchall {:try_start_99 .. :try_end_a0} :catchall_d8

    .line 299
    if-eqz v7, :cond_35

    .line 301
    :try_start_a2
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_a5} :catch_a6
    .catchall {:try_start_a2 .. :try_end_a5} :catchall_ab

    goto :goto_35

    .line 302
    :catch_a6
    move-exception v1

    .line 303
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_a7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35

    .line 345
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_ab
    move-exception v9

    :goto_ac
    monitor-exit p0
    :try_end_ad
    .catchall {:try_start_a7 .. :try_end_ad} :catchall_ab

    throw v9

    .line 292
    :catch_ae
    move-exception v1

    .line 293
    .local v1, "ex":Ljava/io/IOException;
    :goto_af
    :try_start_af
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 294
    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_b6
    .catchall {:try_start_af .. :try_end_b6} :catchall_d8

    .line 299
    if-eqz v7, :cond_35

    .line 301
    :try_start_b8
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_bb} :catch_bd
    .catchall {:try_start_b8 .. :try_end_bb} :catchall_ab

    goto/16 :goto_35

    .line 302
    :catch_bd
    move-exception v1

    .line 303
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_be
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_c1
    .catchall {:try_start_be .. :try_end_c1} :catchall_ab

    goto/16 :goto_35

    .line 295
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_c3
    move-exception v1

    .line 296
    .restart local v1    # "ex":Ljava/lang/Exception;
    :goto_c4
    :try_start_c4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 297
    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_cb
    .catchall {:try_start_c4 .. :try_end_cb} :catchall_d8

    .line 299
    if-eqz v7, :cond_35

    .line 301
    :try_start_cd
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d0} :catch_d2
    .catchall {:try_start_cd .. :try_end_d0} :catchall_ab

    goto/16 :goto_35

    .line 302
    :catch_d2
    move-exception v1

    .line 303
    :try_start_d3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d6
    .catchall {:try_start_d3 .. :try_end_d6} :catchall_ab

    goto/16 :goto_35

    .line 299
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_d8
    move-exception v9

    :goto_d9
    if-eqz v7, :cond_de

    .line 301
    :try_start_db
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_de} :catch_df
    .catchall {:try_start_db .. :try_end_de} :catchall_ab

    .line 304
    :cond_de
    :goto_de
    :try_start_de
    throw v9

    .line 302
    :catch_df
    move-exception v1

    .line 303
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e3
    .catchall {:try_start_de .. :try_end_e3} :catchall_ab

    goto :goto_de

    .line 335
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :cond_e4
    :try_start_e4
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    .line 336
    monitor-exit v10
    :try_end_ea
    .catchall {:try_start_e4 .. :try_end_ea} :catchall_88

    .line 337
    :try_start_ea
    iget-object v9, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v9, v9, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1e

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 339
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_f5
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_ea .. :try_end_f8} :catch_8b
    .catchall {:try_start_ea .. :try_end_f8} :catchall_219

    move-object v5, v6

    .line 342
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto :goto_90

    .line 316
    :catch_fa
    move-exception v1

    .line 317
    .local v1, "ex":Ljava/io/FileNotFoundException;
    :goto_fb
    :try_start_fb
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 318
    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_102
    .catchall {:try_start_fb .. :try_end_102} :catchall_1d5

    .line 326
    if-eqz v5, :cond_90

    .line 328
    :try_start_104
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 329
    iget-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v9, :cond_13e

    .line 331
    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_104 .. :try_end_10e} :catch_127
    .catchall {:try_start_104 .. :try_end_10e} :catchall_ab

    .line 332
    :try_start_10e
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_114
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .line 333
    .restart local v4    # "l":Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_114

    .line 336
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Landroid/app/BarBeamService$Listener;
    :catchall_124
    move-exception v9

    monitor-exit v10
    :try_end_126
    .catchall {:try_start_10e .. :try_end_126} :catchall_124

    :try_start_126
    throw v9
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_127} :catch_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_ab

    .line 340
    :catch_127
    move-exception v1

    .line 341
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_128
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12b
    .catchall {:try_start_128 .. :try_end_12b} :catchall_ab

    goto/16 :goto_90

    .line 335
    .local v1, "ex":Ljava/io/FileNotFoundException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_12d
    :try_start_12d
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    .line 336
    monitor-exit v10
    :try_end_133
    .catchall {:try_start_12d .. :try_end_133} :catchall_124

    .line 337
    :try_start_133
    iget-object v9, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v9, v9, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1e

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 339
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_13e
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_141} :catch_127
    .catchall {:try_start_133 .. :try_end_141} :catchall_ab

    goto/16 :goto_90

    .line 319
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :catch_143
    move-exception v1

    .line 320
    .local v1, "ex":Ljava/io/IOException;
    :goto_144
    :try_start_144
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 321
    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_14b
    .catchall {:try_start_144 .. :try_end_14b} :catchall_1d5

    .line 326
    if-eqz v5, :cond_90

    .line 328
    :try_start_14d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 329
    iget-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v9, :cond_187

    .line 331
    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_157} :catch_170
    .catchall {:try_start_14d .. :try_end_157} :catchall_ab

    .line 332
    :try_start_157
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_15d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_176

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .line 333
    .restart local v4    # "l":Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_15d

    .line 336
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Landroid/app/BarBeamService$Listener;
    :catchall_16d
    move-exception v9

    monitor-exit v10
    :try_end_16f
    .catchall {:try_start_157 .. :try_end_16f} :catchall_16d

    :try_start_16f
    throw v9
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_170} :catch_170
    .catchall {:try_start_16f .. :try_end_170} :catchall_ab

    .line 340
    :catch_170
    move-exception v1

    .line 341
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_171
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_174
    .catchall {:try_start_171 .. :try_end_174} :catchall_ab

    goto/16 :goto_90

    .line 335
    .local v1, "ex":Ljava/io/IOException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_176
    :try_start_176
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    .line 336
    monitor-exit v10
    :try_end_17c
    .catchall {:try_start_176 .. :try_end_17c} :catchall_16d

    .line 337
    :try_start_17c
    iget-object v9, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v9, v9, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1e

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 339
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_187
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_18a
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_18a} :catch_170
    .catchall {:try_start_17c .. :try_end_18a} :catchall_ab

    goto/16 :goto_90

    .line 322
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_18c
    move-exception v1

    .line 323
    .local v1, "ex":Ljava/lang/Exception;
    :goto_18d
    :try_start_18d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 324
    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_194
    .catchall {:try_start_18d .. :try_end_194} :catchall_1d5

    .line 326
    if-eqz v5, :cond_90

    .line 328
    :try_start_196
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 329
    iget-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v9, :cond_1d0

    .line 331
    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_1a0
    .catch Ljava/lang/Exception; {:try_start_196 .. :try_end_1a0} :catch_1b9
    .catchall {:try_start_196 .. :try_end_1a0} :catchall_ab

    .line 332
    :try_start_1a0
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1a6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1bf

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .line 333
    .restart local v4    # "l":Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_1a6

    .line 336
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Landroid/app/BarBeamService$Listener;
    :catchall_1b6
    move-exception v9

    monitor-exit v10
    :try_end_1b8
    .catchall {:try_start_1a0 .. :try_end_1b8} :catchall_1b6

    :try_start_1b8
    throw v9
    :try_end_1b9
    .catch Ljava/lang/Exception; {:try_start_1b8 .. :try_end_1b9} :catch_1b9
    .catchall {:try_start_1b8 .. :try_end_1b9} :catchall_ab

    .line 340
    :catch_1b9
    move-exception v1

    .line 341
    :try_start_1ba
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1bd
    .catchall {:try_start_1ba .. :try_end_1bd} :catchall_ab

    goto/16 :goto_90

    .line 335
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1bf
    :try_start_1bf
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    .line 336
    monitor-exit v10
    :try_end_1c5
    .catchall {:try_start_1bf .. :try_end_1c5} :catchall_1b6

    .line 337
    :try_start_1c5
    iget-object v9, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v9, v9, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1e

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 339
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1d0
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_1d3
    .catch Ljava/lang/Exception; {:try_start_1c5 .. :try_end_1d3} :catch_1b9
    .catchall {:try_start_1c5 .. :try_end_1d3} :catchall_ab

    goto/16 :goto_90

    .line 326
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_1d5
    move-exception v9

    :goto_1d6
    if-eqz v5, :cond_1ff

    .line 328
    :try_start_1d8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 329
    iget-boolean v10, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v10, :cond_211

    .line 331
    iget-object v11, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_1e2
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_1e2} :catch_1fb
    .catchall {:try_start_1d8 .. :try_end_1e2} :catchall_ab

    .line 332
    :try_start_1e2
    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1e8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_200

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .line 333
    .restart local v4    # "l":Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_1e8

    .line 336
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Landroid/app/BarBeamService$Listener;
    :catchall_1f8
    move-exception v10

    monitor-exit v11
    :try_end_1fa
    .catchall {:try_start_1e2 .. :try_end_1fa} :catchall_1f8

    :try_start_1fa
    throw v10
    :try_end_1fb
    .catch Ljava/lang/Exception; {:try_start_1fa .. :try_end_1fb} :catch_1fb
    .catchall {:try_start_1fa .. :try_end_1fb} :catchall_ab

    .line 340
    :catch_1fb
    move-exception v1

    .line 341
    .restart local v1    # "ex":Ljava/lang/Exception;
    :try_start_1fc
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 342
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1ff
    :goto_1ff
    throw v9
    :try_end_200
    .catchall {:try_start_1fc .. :try_end_200} :catchall_ab

    .line 335
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_200
    :try_start_200
    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/lang/Object;->notify()V

    .line 336
    monitor-exit v11
    :try_end_206
    .catchall {:try_start_200 .. :try_end_206} :catchall_1f8

    .line 337
    :try_start_206
    iget-object v10, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v10, v10, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x1e

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 339
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_211
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_214
    .catch Ljava/lang/Exception; {:try_start_206 .. :try_end_214} :catch_1fb
    .catchall {:try_start_206 .. :try_end_214} :catchall_ab

    goto :goto_1ff

    .line 345
    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :catchall_215
    move-exception v9

    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_ac

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catchall_219
    move-exception v9

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_ac

    .line 326
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catchall_21d
    move-exception v9

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto :goto_1d6

    .line 322
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catch_220
    move-exception v1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_18d

    .line 319
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catch_224
    move-exception v1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_144

    .line 316
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catch_228
    move-exception v1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_fb

    .line 299
    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :catchall_22c
    move-exception v9

    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_d9

    .line 295
    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :catch_230
    move-exception v1

    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_c4

    .line 292
    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :catch_234
    move-exception v1

    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_af

    .line 289
    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :catch_238
    move-exception v1

    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_99

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :cond_23c
    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_90

    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :cond_23f
    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_35
.end method

.method public startBeaming_repeat(I)V
    .registers 16
    .param p1, "repeatCount"    # I

    .prologue
    const/4 v12, 0x1

    .line 605
    const-string v9, "BarBeamService"

    const-string/jumbo v10, "startBeaming_repeat"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    if-ge p1, v12, :cond_c

    .line 608
    const/4 p1, 0x1

    .line 609
    :cond_c
    const/16 v9, 0xff

    if-le p1, v9, :cond_12

    .line 610
    const/16 p1, 0xff

    .line 613
    :cond_12
    iget-object v9, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string v10, "com.samsung.permission.BARCODE_READ"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    sget-boolean v9, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z

    .line 617
    const/4 v7, 0x0

    .line 618
    .local v7, "out_en":Ljava/io/FileWriter;
    const/4 v5, 0x0

    .line 620
    .local v5, "out":Ljava/io/FileOutputStream;
    const/4 v9, 0x2

    new-array v0, v9, [B

    .line 621
    .local v0, "data":[B
    new-array v2, v12, [C

    .line 624
    .local v2, "flag":[C
    monitor-enter p0

    .line 626
    :try_start_26
    new-instance v8, Ljava/io/FileWriter;

    const-string v9, "/sys/class/sensors/proximity_sensor/barcode_emul_en"

    invoke-direct {v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_2d} :catch_a0
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2d} :catch_b6
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2d} :catch_cb
    .catchall {:try_start_26 .. :try_end_2d} :catchall_e0

    .line 627
    .end local v7    # "out_en":Ljava/io/FileWriter;
    .local v8, "out_en":Ljava/io/FileWriter;
    const/4 v9, 0x0

    const/16 v10, 0x31

    :try_start_30
    aput-char v10, v2, v9

    .line 628
    invoke-virtual {v8, v2}, Ljava/io/FileWriter;->write([C)V

    .line 629
    invoke-virtual {v8}, Ljava/io/FileWriter;->flush()V
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_38} :catch_240
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_38} :catch_23c
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_38} :catch_238
    .catchall {:try_start_30 .. :try_end_38} :catchall_234

    .line 641
    if-eqz v8, :cond_247

    .line 643
    :try_start_3a
    invoke-virtual {v8}, Ljava/io/FileWriter;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_9a
    .catchall {:try_start_3a .. :try_end_3d} :catchall_21d

    move-object v7, v8

    .line 651
    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    :cond_3e
    :goto_3e
    const/4 v9, 0x0

    const/4 v10, -0x1

    :try_start_40
    aput-byte v10, v0, v9

    .line 652
    const/4 v9, 0x1

    int-to-byte v10, p1

    aput-byte v10, v0, v9
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_b3

    .line 654
    :try_start_46
    new-instance v6, Ljava/io/FileOutputStream;

    const-string v9, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v6, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/io/FileNotFoundException; {:try_start_46 .. :try_end_4d} :catch_102
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_4d} :catch_14b
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4d} :catch_194
    .catchall {:try_start_46 .. :try_end_4d} :catchall_1dd

    .line 655
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v6, "out":Ljava/io/FileOutputStream;
    :try_start_4d
    invoke-virtual {v6, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 656
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 657
    const-string v9, "BarBeamService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "startBarBeam : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-byte v11, p0, Landroid/app/BarBeamService;->mBeamLength:B

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catch Ljava/io/FileNotFoundException; {:try_start_4d .. :try_end_6e} :catch_230
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_6e} :catch_22c
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_6e} :catch_228
    .catchall {:try_start_4d .. :try_end_6e} :catchall_225

    .line 668
    if-eqz v6, :cond_244

    .line 670
    :try_start_70
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 671
    iget-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v9, :cond_fd

    .line 672
    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_7a} :catch_93
    .catchall {:try_start_70 .. :try_end_7a} :catchall_221

    .line 673
    :try_start_7a
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_80
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_ec

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .line 674
    .local v4, "l":Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_80

    .line 677
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Landroid/app/BarBeamService$Listener;
    :catchall_90
    move-exception v9

    monitor-exit v10
    :try_end_92
    .catchall {:try_start_7a .. :try_end_92} :catchall_90

    :try_start_92
    throw v9
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_93} :catch_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_221

    .line 681
    :catch_93
    move-exception v1

    .line 682
    .local v1, "ex":Ljava/io/IOException;
    :try_start_94
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_221

    move-object v5, v6

    .line 686
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :cond_98
    :goto_98
    :try_start_98
    monitor-exit p0
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_b3

    .line 687
    return-void

    .line 644
    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :catch_9a
    move-exception v1

    .line 645
    .restart local v1    # "ex":Ljava/io/IOException;
    :try_start_9b
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_21d

    move-object v7, v8

    .line 646
    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto :goto_3e

    .line 631
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_a0
    move-exception v1

    .line 632
    .local v1, "ex":Ljava/io/FileNotFoundException;
    :goto_a1
    :try_start_a1
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 633
    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_a8
    .catchall {:try_start_a1 .. :try_end_a8} :catchall_e0

    .line 641
    if-eqz v7, :cond_3e

    .line 643
    :try_start_aa
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_ae
    .catchall {:try_start_aa .. :try_end_ad} :catchall_b3

    goto :goto_3e

    .line 644
    :catch_ae
    move-exception v1

    .line 645
    .local v1, "ex":Ljava/io/IOException;
    :try_start_af
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3e

    .line 686
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_b3
    move-exception v9

    :goto_b4
    monitor-exit p0
    :try_end_b5
    .catchall {:try_start_af .. :try_end_b5} :catchall_b3

    throw v9

    .line 634
    :catch_b6
    move-exception v1

    .line 635
    .restart local v1    # "ex":Ljava/io/IOException;
    :goto_b7
    :try_start_b7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 636
    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_be
    .catchall {:try_start_b7 .. :try_end_be} :catchall_e0

    .line 641
    if-eqz v7, :cond_3e

    .line 643
    :try_start_c0
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_c5
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_b3

    goto/16 :goto_3e

    .line 644
    :catch_c5
    move-exception v1

    .line 645
    :try_start_c6
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_c9
    .catchall {:try_start_c6 .. :try_end_c9} :catchall_b3

    goto/16 :goto_3e

    .line 637
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_cb
    move-exception v1

    .line 638
    .local v1, "ex":Ljava/lang/Exception;
    :goto_cc
    :try_start_cc
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 639
    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_d3
    .catchall {:try_start_cc .. :try_end_d3} :catchall_e0

    .line 641
    if-eqz v7, :cond_3e

    .line 643
    :try_start_d5
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_d5 .. :try_end_d8} :catch_da
    .catchall {:try_start_d5 .. :try_end_d8} :catchall_b3

    goto/16 :goto_3e

    .line 644
    :catch_da
    move-exception v1

    .line 645
    .local v1, "ex":Ljava/io/IOException;
    :try_start_db
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_de
    .catchall {:try_start_db .. :try_end_de} :catchall_b3

    goto/16 :goto_3e

    .line 641
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_e0
    move-exception v9

    :goto_e1
    if-eqz v7, :cond_e6

    .line 643
    :try_start_e3
    invoke-virtual {v7}, Ljava/io/FileWriter;->close()V
    :try_end_e6
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_e6} :catch_e7
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_b3

    .line 646
    :cond_e6
    :goto_e6
    :try_start_e6
    throw v9

    .line 644
    :catch_e7
    move-exception v1

    .line 645
    .restart local v1    # "ex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_eb
    .catchall {:try_start_e6 .. :try_end_eb} :catchall_b3

    goto :goto_e6

    .line 676
    .end local v1    # "ex":Ljava/io/IOException;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :cond_ec
    :try_start_ec
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    .line 677
    monitor-exit v10
    :try_end_f2
    .catchall {:try_start_ec .. :try_end_f2} :catchall_90

    .line 678
    :try_start_f2
    iget-object v9, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v9, v9, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1e

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 680
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_fd
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_100
    .catch Ljava/io/IOException; {:try_start_f2 .. :try_end_100} :catch_93
    .catchall {:try_start_f2 .. :try_end_100} :catchall_221

    move-object v5, v6

    .line 683
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto :goto_98

    .line 658
    :catch_102
    move-exception v1

    .line 659
    .local v1, "ex":Ljava/io/FileNotFoundException;
    :goto_103
    :try_start_103
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 660
    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_10a
    .catchall {:try_start_103 .. :try_end_10a} :catchall_1dd

    .line 668
    if-eqz v5, :cond_98

    .line 670
    :try_start_10c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 671
    iget-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v9, :cond_146

    .line 672
    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_116} :catch_12f
    .catchall {:try_start_10c .. :try_end_116} :catchall_b3

    .line 673
    :try_start_116
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_11c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_135

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .line 674
    .restart local v4    # "l":Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_11c

    .line 677
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Landroid/app/BarBeamService$Listener;
    :catchall_12c
    move-exception v9

    monitor-exit v10
    :try_end_12e
    .catchall {:try_start_116 .. :try_end_12e} :catchall_12c

    :try_start_12e
    throw v9
    :try_end_12f
    .catch Ljava/io/IOException; {:try_start_12e .. :try_end_12f} :catch_12f
    .catchall {:try_start_12e .. :try_end_12f} :catchall_b3

    .line 681
    :catch_12f
    move-exception v1

    .line 682
    .local v1, "ex":Ljava/io/IOException;
    :try_start_130
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_133
    .catchall {:try_start_130 .. :try_end_133} :catchall_b3

    goto/16 :goto_98

    .line 676
    .local v1, "ex":Ljava/io/FileNotFoundException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_135
    :try_start_135
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    .line 677
    monitor-exit v10
    :try_end_13b
    .catchall {:try_start_135 .. :try_end_13b} :catchall_12c

    .line 678
    :try_start_13b
    iget-object v9, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v9, v9, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1e

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 680
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_146
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_149
    .catch Ljava/io/IOException; {:try_start_13b .. :try_end_149} :catch_12f
    .catchall {:try_start_13b .. :try_end_149} :catchall_b3

    goto/16 :goto_98

    .line 661
    .end local v1    # "ex":Ljava/io/FileNotFoundException;
    :catch_14b
    move-exception v1

    .line 662
    .local v1, "ex":Ljava/io/IOException;
    :goto_14c
    :try_start_14c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 663
    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_153
    .catchall {:try_start_14c .. :try_end_153} :catchall_1dd

    .line 668
    if-eqz v5, :cond_98

    .line 670
    :try_start_155
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 671
    iget-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v9, :cond_18f

    .line 672
    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_15f
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_15f} :catch_178
    .catchall {:try_start_155 .. :try_end_15f} :catchall_b3

    .line 673
    :try_start_15f
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_165
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_17e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .line 674
    .restart local v4    # "l":Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_165

    .line 677
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Landroid/app/BarBeamService$Listener;
    :catchall_175
    move-exception v9

    monitor-exit v10
    :try_end_177
    .catchall {:try_start_15f .. :try_end_177} :catchall_175

    :try_start_177
    throw v9
    :try_end_178
    .catch Ljava/io/IOException; {:try_start_177 .. :try_end_178} :catch_178
    .catchall {:try_start_177 .. :try_end_178} :catchall_b3

    .line 681
    :catch_178
    move-exception v1

    .line 682
    :try_start_179
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_17c
    .catchall {:try_start_179 .. :try_end_17c} :catchall_b3

    goto/16 :goto_98

    .line 676
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_17e
    :try_start_17e
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    .line 677
    monitor-exit v10
    :try_end_184
    .catchall {:try_start_17e .. :try_end_184} :catchall_175

    .line 678
    :try_start_184
    iget-object v9, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v9, v9, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1e

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 680
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_18f
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_192
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_192} :catch_178
    .catchall {:try_start_184 .. :try_end_192} :catchall_b3

    goto/16 :goto_98

    .line 664
    .end local v1    # "ex":Ljava/io/IOException;
    :catch_194
    move-exception v1

    .line 665
    .local v1, "ex":Ljava/lang/Exception;
    :goto_195
    :try_start_195
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 666
    sget-boolean v9, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v9, Landroid/app/BarBeamService;->result:Z
    :try_end_19c
    .catchall {:try_start_195 .. :try_end_19c} :catchall_1dd

    .line 668
    if-eqz v5, :cond_98

    .line 670
    :try_start_19e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 671
    iget-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v9, :cond_1d8

    .line 672
    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v10
    :try_end_1a8
    .catch Ljava/io/IOException; {:try_start_19e .. :try_end_1a8} :catch_1c1
    .catchall {:try_start_19e .. :try_end_1a8} :catchall_b3

    .line 673
    :try_start_1a8
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1ae
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1c7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .line 674
    .restart local v4    # "l":Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_1ae

    .line 677
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Landroid/app/BarBeamService$Listener;
    :catchall_1be
    move-exception v9

    monitor-exit v10
    :try_end_1c0
    .catchall {:try_start_1a8 .. :try_end_1c0} :catchall_1be

    :try_start_1c0
    throw v9
    :try_end_1c1
    .catch Ljava/io/IOException; {:try_start_1c0 .. :try_end_1c1} :catch_1c1
    .catchall {:try_start_1c0 .. :try_end_1c1} :catchall_b3

    .line 681
    :catch_1c1
    move-exception v1

    .line 682
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1c2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1c5
    .catchall {:try_start_1c2 .. :try_end_1c5} :catchall_b3

    goto/16 :goto_98

    .line 676
    .local v1, "ex":Ljava/lang/Exception;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1c7
    :try_start_1c7
    iget-object v9, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/lang/Object;->notify()V

    .line 677
    monitor-exit v10
    :try_end_1cd
    .catchall {:try_start_1c7 .. :try_end_1cd} :catchall_1be

    .line 678
    :try_start_1cd
    iget-object v9, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v9, v9, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v10, 0x1e

    const-wide/16 v12, 0x0

    invoke-virtual {v9, v10, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 680
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_1d8
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_1db
    .catch Ljava/io/IOException; {:try_start_1cd .. :try_end_1db} :catch_1c1
    .catchall {:try_start_1cd .. :try_end_1db} :catchall_b3

    goto/16 :goto_98

    .line 668
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_1dd
    move-exception v9

    :goto_1de
    if-eqz v5, :cond_207

    .line 670
    :try_start_1e0
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 671
    iget-boolean v10, p0, Landroid/app/BarBeamService;->isRunning:Z

    if-nez v10, :cond_219

    .line 672
    iget-object v11, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_1ea
    .catch Ljava/io/IOException; {:try_start_1e0 .. :try_end_1ea} :catch_203
    .catchall {:try_start_1e0 .. :try_end_1ea} :catchall_b3

    .line 673
    :try_start_1ea
    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_1f0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_208

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/BarBeamService$Listener;

    .line 674
    .restart local v4    # "l":Landroid/app/BarBeamService$Listener;
    invoke-virtual {v4}, Landroid/app/BarBeamService$Listener;->onBeamingStarted()V

    goto :goto_1f0

    .line 677
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "l":Landroid/app/BarBeamService$Listener;
    :catchall_200
    move-exception v10

    monitor-exit v11
    :try_end_202
    .catchall {:try_start_1ea .. :try_end_202} :catchall_200

    :try_start_202
    throw v10
    :try_end_203
    .catch Ljava/io/IOException; {:try_start_202 .. :try_end_203} :catch_203
    .catchall {:try_start_202 .. :try_end_203} :catchall_b3

    .line 681
    :catch_203
    move-exception v1

    .line 682
    .local v1, "ex":Ljava/io/IOException;
    :try_start_204
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 683
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_207
    :goto_207
    throw v9
    :try_end_208
    .catchall {:try_start_204 .. :try_end_208} :catchall_b3

    .line 676
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_208
    :try_start_208
    iget-object v10, p0, Landroid/app/BarBeamService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/lang/Object;->notify()V

    .line 677
    monitor-exit v11
    :try_end_20e
    .catchall {:try_start_208 .. :try_end_20e} :catchall_200

    .line 678
    :try_start_20e
    iget-object v10, p0, Landroid/app/BarBeamService;->mcheckstatusThread:Landroid/app/BarBeamService$CheckStatusThread;

    iget-object v10, v10, Landroid/app/BarBeamService$CheckStatusThread;->mHandler:Landroid/os/Handler;

    const/16 v11, 0x1e

    const-wide/16 v12, 0x0

    invoke-virtual {v10, v11, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 680
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_219
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/app/BarBeamService;->isRunning:Z
    :try_end_21c
    .catch Ljava/io/IOException; {:try_start_20e .. :try_end_21c} :catch_203
    .catchall {:try_start_20e .. :try_end_21c} :catchall_b3

    goto :goto_207

    .line 686
    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :catchall_21d
    move-exception v9

    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_b4

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catchall_221
    move-exception v9

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_b4

    .line 668
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catchall_225
    move-exception v9

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto :goto_1de

    .line 664
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catch_228
    move-exception v1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_195

    .line 661
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catch_22c
    move-exception v1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_14c

    .line 658
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catch_230
    move-exception v1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_103

    .line 641
    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :catchall_234
    move-exception v9

    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_e1

    .line 637
    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :catch_238
    move-exception v1

    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_cc

    .line 634
    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :catch_23c
    move-exception v1

    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_b7

    .line 631
    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :catch_240
    move-exception v1

    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_a1

    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :cond_244
    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_98

    .end local v7    # "out_en":Ljava/io/FileWriter;
    .restart local v8    # "out_en":Ljava/io/FileWriter;
    :cond_247
    move-object v7, v8

    .end local v8    # "out_en":Ljava/io/FileWriter;
    .restart local v7    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_3e
.end method

.method public stopBeaming()V
    .registers 12

    .prologue
    const/4 v10, 0x1

    .line 353
    const-string v7, "BarBeamService"

    const-string/jumbo v8, "stopBarBeam"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v7, p0, Landroid/app/BarBeamService;->mContext:Landroid/content/Context;

    const-string v8, "com.samsung.permission.BARCODE_READ"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const/4 v5, 0x0

    .line 359
    .local v5, "out_en":Ljava/io/FileWriter;
    const/4 v3, 0x0

    .line 361
    .local v3, "out":Ljava/io/FileOutputStream;
    sget-boolean v7, Landroid/app/BarBeamService;->SUCCESS:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z

    .line 363
    const/4 v7, 0x2

    new-array v0, v7, [B

    .line 364
    .local v0, "data":[B
    new-array v2, v10, [C

    .line 366
    .local v2, "flag":[C
    monitor-enter p0

    .line 368
    :try_start_1d
    new-instance v6, Ljava/io/FileWriter;

    const-string v7, "/sys/class/sensors/proximity_sensor/barcode_emul_en"

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_24} :catch_58
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_24} :catch_6e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_24} :catch_81
    .catchall {:try_start_1d .. :try_end_24} :catchall_94

    .line 369
    .end local v5    # "out_en":Ljava/io/FileWriter;
    .local v6, "out_en":Ljava/io/FileWriter;
    const/4 v7, 0x0

    const/16 v8, 0x30

    :try_start_27
    aput-char v8, v2, v7

    .line 370
    invoke-virtual {v6, v2}, Ljava/io/FileWriter;->write([C)V

    .line 371
    invoke-virtual {v6}, Ljava/io/FileWriter;->flush()V
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_2f} :catch_10c
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2f} :catch_108
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2f} :catch_104
    .catchall {:try_start_27 .. :try_end_2f} :catchall_101

    .line 383
    if-eqz v6, :cond_113

    .line 385
    :try_start_31
    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_52
    .catchall {:try_start_31 .. :try_end_34} :catchall_ed

    move-object v5, v6

    .line 393
    .end local v6    # "out_en":Ljava/io/FileWriter;
    .restart local v5    # "out_en":Ljava/io/FileWriter;
    :cond_35
    :goto_35
    const/4 v7, 0x0

    const/4 v8, -0x1

    :try_start_37
    aput-byte v8, v0, v7

    .line 394
    const/4 v7, 0x1

    const/4 v8, 0x0

    aput-byte v8, v0, v7
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_6b

    .line 396
    :try_start_3d
    new-instance v4, Ljava/io/FileOutputStream;

    const-string v7, "/sys/class/sec/sec_barcode_emul/barcode_send"

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_44} :catch_a6
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_44} :catch_b9
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_44} :catch_cc
    .catchall {:try_start_3d .. :try_end_44} :catchall_e1

    .line 397
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_44
    invoke-virtual {v4, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 398
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_44 .. :try_end_4a} :catch_fe
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4a} :catch_fb
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4a} :catch_f8
    .catchall {:try_start_44 .. :try_end_4a} :catchall_f5

    .line 410
    if-eqz v4, :cond_110

    .line 412
    :try_start_4c
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4f} :catch_a0
    .catchall {:try_start_4c .. :try_end_4f} :catchall_f1

    move-object v3, v4

    .line 418
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :cond_50
    :goto_50
    :try_start_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_6b

    .line 419
    return-void

    .line 386
    .end local v5    # "out_en":Ljava/io/FileWriter;
    .restart local v6    # "out_en":Ljava/io/FileWriter;
    :catch_52
    move-exception v1

    .line 387
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_53
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_ed

    move-object v5, v6

    .line 388
    .end local v6    # "out_en":Ljava/io/FileWriter;
    .restart local v5    # "out_en":Ljava/io/FileWriter;
    goto :goto_35

    .line 373
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_58
    move-exception v1

    .line 374
    .local v1, "ex":Ljava/io/FileNotFoundException;
    :goto_59
    :try_start_59
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 375
    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_94

    .line 383
    if-eqz v5, :cond_35

    .line 385
    :try_start_62
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_66
    .catchall {:try_start_62 .. :try_end_65} :catchall_6b

    goto :goto_35

    .line 386
    :catch_66
    move-exception v1

    .line 387
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_67
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35

    .line 418
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_6b
    move-exception v7

    :goto_6c
    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_67 .. :try_end_6d} :catchall_6b

    throw v7

    .line 376
    :catch_6e
    move-exception v1

    .line 377
    .local v1, "ex":Ljava/io/IOException;
    :goto_6f
    :try_start_6f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 378
    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_76
    .catchall {:try_start_6f .. :try_end_76} :catchall_94

    .line 383
    if-eqz v5, :cond_35

    .line 385
    :try_start_78
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_78 .. :try_end_7b} :catch_7c
    .catchall {:try_start_78 .. :try_end_7b} :catchall_6b

    goto :goto_35

    .line 386
    :catch_7c
    move-exception v1

    .line 387
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_7d
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_6b

    goto :goto_35

    .line 379
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_81
    move-exception v1

    .line 380
    .restart local v1    # "ex":Ljava/lang/Exception;
    :goto_82
    :try_start_82
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 381
    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_89
    .catchall {:try_start_82 .. :try_end_89} :catchall_94

    .line 383
    if-eqz v5, :cond_35

    .line 385
    :try_start_8b
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_8e} :catch_8f
    .catchall {:try_start_8b .. :try_end_8e} :catchall_6b

    goto :goto_35

    .line 386
    :catch_8f
    move-exception v1

    .line 387
    :try_start_90
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_6b

    goto :goto_35

    .line 383
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_94
    move-exception v7

    :goto_95
    if-eqz v5, :cond_9a

    .line 385
    :try_start_97
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9a} :catch_9b
    .catchall {:try_start_97 .. :try_end_9a} :catchall_6b

    .line 388
    :cond_9a
    :goto_9a
    :try_start_9a
    throw v7

    .line 386
    :catch_9b
    move-exception v1

    .line 387
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_9f
    .catchall {:try_start_9a .. :try_end_9f} :catchall_6b

    goto :goto_9a

    .line 413
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_a0
    move-exception v1

    .line 414
    .restart local v1    # "ex":Ljava/lang/Exception;
    :try_start_a1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a4
    .catchall {:try_start_a1 .. :try_end_a4} :catchall_f1

    move-object v3, v4

    .line 415
    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_50

    .line 400
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_a6
    move-exception v1

    .line 401
    .local v1, "ex":Ljava/io/FileNotFoundException;
    :goto_a7
    :try_start_a7
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 402
    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_ae
    .catchall {:try_start_a7 .. :try_end_ae} :catchall_e1

    .line 410
    if-eqz v3, :cond_50

    .line 412
    :try_start_b0
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b3} :catch_b4
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_6b

    goto :goto_50

    .line 413
    :catch_b4
    move-exception v1

    .line 414
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_b5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b8
    .catchall {:try_start_b5 .. :try_end_b8} :catchall_6b

    goto :goto_50

    .line 403
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_b9
    move-exception v1

    .line 404
    .local v1, "ex":Ljava/io/IOException;
    :goto_ba
    :try_start_ba
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 405
    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_c1
    .catchall {:try_start_ba .. :try_end_c1} :catchall_e1

    .line 410
    if-eqz v3, :cond_50

    .line 412
    :try_start_c3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c6} :catch_c7
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_6b

    goto :goto_50

    .line 413
    :catch_c7
    move-exception v1

    .line 414
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_c8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_cb
    .catchall {:try_start_c8 .. :try_end_cb} :catchall_6b

    goto :goto_50

    .line 406
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_cc
    move-exception v1

    .line 407
    .restart local v1    # "ex":Ljava/lang/Exception;
    :goto_cd
    :try_start_cd
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 408
    sget-boolean v7, Landroid/app/BarBeamService;->FAIL:Z

    sput-boolean v7, Landroid/app/BarBeamService;->result:Z
    :try_end_d4
    .catchall {:try_start_cd .. :try_end_d4} :catchall_e1

    .line 410
    if-eqz v3, :cond_50

    .line 412
    :try_start_d6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d6 .. :try_end_d9} :catch_db
    .catchall {:try_start_d6 .. :try_end_d9} :catchall_6b

    goto/16 :goto_50

    .line 413
    :catch_db
    move-exception v1

    .line 414
    :try_start_dc
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_df
    .catchall {:try_start_dc .. :try_end_df} :catchall_6b

    goto/16 :goto_50

    .line 410
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_e1
    move-exception v7

    :goto_e2
    if-eqz v3, :cond_e7

    .line 412
    :try_start_e4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e7} :catch_e8
    .catchall {:try_start_e4 .. :try_end_e7} :catchall_6b

    .line 415
    :cond_e7
    :goto_e7
    :try_start_e7
    throw v7

    .line 413
    :catch_e8
    move-exception v1

    .line 414
    .restart local v1    # "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_ec
    .catchall {:try_start_e7 .. :try_end_ec} :catchall_6b

    goto :goto_e7

    .line 418
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v5    # "out_en":Ljava/io/FileWriter;
    .restart local v6    # "out_en":Ljava/io/FileWriter;
    :catchall_ed
    move-exception v7

    move-object v5, v6

    .end local v6    # "out_en":Ljava/io/FileWriter;
    .restart local v5    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_6c

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_f1
    move-exception v7

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_6c

    .line 410
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catchall_f5
    move-exception v7

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_e2

    .line 406
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_f8
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_cd

    .line 403
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_fb
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_ba

    .line 400
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :catch_fe
    move-exception v1

    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto :goto_a7

    .line 383
    .end local v5    # "out_en":Ljava/io/FileWriter;
    .restart local v6    # "out_en":Ljava/io/FileWriter;
    :catchall_101
    move-exception v7

    move-object v5, v6

    .end local v6    # "out_en":Ljava/io/FileWriter;
    .restart local v5    # "out_en":Ljava/io/FileWriter;
    goto :goto_95

    .line 379
    .end local v5    # "out_en":Ljava/io/FileWriter;
    .restart local v6    # "out_en":Ljava/io/FileWriter;
    :catch_104
    move-exception v1

    move-object v5, v6

    .end local v6    # "out_en":Ljava/io/FileWriter;
    .restart local v5    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_82

    .line 376
    .end local v5    # "out_en":Ljava/io/FileWriter;
    .restart local v6    # "out_en":Ljava/io/FileWriter;
    :catch_108
    move-exception v1

    move-object v5, v6

    .end local v6    # "out_en":Ljava/io/FileWriter;
    .restart local v5    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_6f

    .line 373
    .end local v5    # "out_en":Ljava/io/FileWriter;
    .restart local v6    # "out_en":Ljava/io/FileWriter;
    :catch_10c
    move-exception v1

    move-object v5, v6

    .end local v6    # "out_en":Ljava/io/FileWriter;
    .restart local v5    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_59

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "out":Ljava/io/FileOutputStream;
    :cond_110
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    goto/16 :goto_50

    .end local v5    # "out_en":Ljava/io/FileWriter;
    .restart local v6    # "out_en":Ljava/io/FileWriter;
    :cond_113
    move-object v5, v6

    .end local v6    # "out_en":Ljava/io/FileWriter;
    .restart local v5    # "out_en":Ljava/io/FileWriter;
    goto/16 :goto_35
.end method
