.class Lcom/android/server/analytics/data/collection/application/CrashAnrDetector$1;
.super Landroid/content/BroadcastReceiver;
.source "CrashAnrDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;


# direct methods
.method constructor <init>(Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;)V
    .registers 2

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector$1;->this$0:Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 100
    const-string/jumbo v1, "tag"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "tag":Ljava/lang/String;
    # getter for: Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->mTags:Ljava/util/Set;
    invoke-static {}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->access$000()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 102
    iget-object v1, p0, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector$1;->this$0:Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;

    const-string/jumbo v2, "time"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    # invokes: Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->processDropBoxEntry(Ljava/lang/String;J)V
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;->access$100(Lcom/android/server/analytics/data/collection/application/CrashAnrDetector;Ljava/lang/String;J)V

    .line 104
    :cond_1f
    return-void
.end method
