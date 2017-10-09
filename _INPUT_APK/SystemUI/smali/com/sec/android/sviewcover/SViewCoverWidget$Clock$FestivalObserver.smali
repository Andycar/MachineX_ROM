.class Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$FestivalObserver;
.super Landroid/database/ContentObserver;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FestivalObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;


# direct methods
.method public constructor <init>(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)V
    .locals 1

    .prologue
    .line 607
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$FestivalObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    .line 608
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 609
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x0

    .line 613
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 614
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FestivalObserver onChange()"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    iget-object v2, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$FestivalObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$FestivalObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->access$500(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "festival_effect_enabled"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$FestivalObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->access$500(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "festival_effect_lockscreen_wallpaper"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->access$802(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;Z)Z

    .line 618
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFestivalEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$FestivalObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    invoke-static {v3}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->access$800(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$FestivalObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->access$400(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$FestivalObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->access$800(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 622
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$FestivalObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->access$400(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 627
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 616
    goto :goto_0

    .line 624
    :cond_2
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock$FestivalObserver;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;->access$400(Lcom/sec/android/sviewcover/SViewCoverWidget$Clock;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
