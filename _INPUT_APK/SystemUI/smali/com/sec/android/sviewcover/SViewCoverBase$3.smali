.class Lcom/sec/android/sviewcover/SViewCoverBase$3;
.super Ljava/util/TimerTask;
.source "SViewCoverBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/sviewcover/SViewCoverBase;->startMCScreenOnTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/sviewcover/SViewCoverBase;


# direct methods
.method constructor <init>(Lcom/sec/android/sviewcover/SViewCoverBase;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/sec/android/sviewcover/SViewCoverBase$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sec/android/sviewcover/SViewCoverBase$3;->this$0:Lcom/sec/android/sviewcover/SViewCoverBase;

    invoke-static {v0}, Lcom/sec/android/sviewcover/SViewCoverBase;->access$300(Lcom/sec/android/sviewcover/SViewCoverBase;)Z

    .line 164
    return-void
.end method
