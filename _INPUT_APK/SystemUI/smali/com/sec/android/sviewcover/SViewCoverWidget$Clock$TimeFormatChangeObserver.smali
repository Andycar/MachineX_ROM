.class Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$TimeFormatChangeObserver;
.super Landroid/database/ContentObserver;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeFormatChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;


# direct methods
.method public constructor <init>(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)V
    .locals 1

    .prologue
    .line 530
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$TimeFormatChangeObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    .line 531
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 532
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 536
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$TimeFormatChangeObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    iget-object v1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$TimeFormatChangeObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    invoke-virtual {v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->access$702(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;Z)Z

    .line 537
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$TimeFormatChangeObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->access$000(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)V

    .line 538
    return-void
.end method
