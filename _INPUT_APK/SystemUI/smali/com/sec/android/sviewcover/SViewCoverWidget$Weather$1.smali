.class Lcom/sec/android/sviewcover/SViewCoverWidget$Weather$1;
.super Landroid/database/ContentObserver;
.source "SViewCoverWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1541
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 1544
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 1545
    invoke-static {}, Lcom/sec/android/sviewcover/SViewCoverWidget;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather$1;->this$0:Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;->access$1500(Lcom/sec/android/sviewcover/SViewCoverWidget$Weather;)V

    .line 1547
    return-void
.end method
