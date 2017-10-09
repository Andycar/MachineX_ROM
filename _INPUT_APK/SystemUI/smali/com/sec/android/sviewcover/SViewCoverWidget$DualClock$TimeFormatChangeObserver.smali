.class Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$TimeFormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeFormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;


# direct methods
.method public constructor <init>(Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;)V
    .locals 1

    .prologue
    .line 1099
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$TimeFormatChangeObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

    .line 1100
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1101
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$TimeFormatChangeObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$TimeFormatChangeObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

    invoke-virtual {v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->access$1202(Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;Z)Z

    .line 1106
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock$TimeFormatChangeObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;->access$900(Lcom/sec/android/sviewcover/SViewCoverWidget$DualClock;)V

    .line 1107
    return-void
.end method
