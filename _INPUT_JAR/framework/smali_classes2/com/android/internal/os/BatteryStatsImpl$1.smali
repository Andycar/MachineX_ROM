.class Lcom/android/internal/os/BatteryStatsImpl$1;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->setOnBatteryLocked(JJZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field final synthetic val$parcel:Landroid/os/Parcel;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Parcel;)V
    .registers 3

    .prologue
    .line 6768
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$1;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$1;->val$parcel:Landroid/os/Parcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 6770
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$1;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v3

    .line 6771
    const/4 v1, 0x0

    .line 6773
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_6
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$1;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 6774
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$1;->val$parcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 6775
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 6776
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 6777
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 6778
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$1;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_27} :catch_2e
    .catchall {:try_start_6 .. :try_end_27} :catchall_46

    .line 6784
    :try_start_27
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$1;->val$parcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 6786
    :goto_2c
    monitor-exit v3
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_43

    .line 6787
    return-void

    .line 6779
    :catch_2e
    move-exception v0

    .line 6780
    .local v0, "e":Ljava/io/IOException;
    :try_start_2f
    const-string v2, "BatteryStats"

    const-string v4, "Error writing checkin battery statistics"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6782
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$1;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3d
    .catchall {:try_start_2f .. :try_end_3d} :catchall_46

    .line 6784
    :try_start_3d
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$1;->val$parcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 6786
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_43
    move-exception v2

    monitor-exit v3
    :try_end_45
    .catchall {:try_start_3d .. :try_end_45} :catchall_43

    throw v2

    .line 6784
    :catchall_46
    move-exception v2

    :try_start_47
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$1;->val$parcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw v2
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_43
.end method
