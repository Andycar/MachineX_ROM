.class public final Ljava/lang/Daemons;
.super Ljava/lang/Object;
.source "Daemons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Daemons$1;,
        Ljava/lang/Daemons$GCDaemon;,
        Ljava/lang/Daemons$HeapTrimmerDaemon;,
        Ljava/lang/Daemons$FinalizerWatchdogDaemon;,
        Ljava/lang/Daemons$FinalizerDaemon;,
        Ljava/lang/Daemons$ReferenceQueueDaemon;,
        Ljava/lang/Daemons$Daemon;
    }
.end annotation


# static fields
.field private static final MAX_FINALIZE_NANOS:J = 0x2540be400L

.field private static final NANOS_PER_MILLI:I = 0xf4240

.field private static final NANOS_PER_SECOND:I = 0x3b9aca00


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    return-void
.end method

.method public static requestGC()V
    .registers 1

    .prologue
    .line 321
    # getter for: Ljava/lang/Daemons$GCDaemon;->INSTANCE:Ljava/lang/Daemons$GCDaemon;
    invoke-static {}, Ljava/lang/Daemons$GCDaemon;->access$400()Ljava/lang/Daemons$GCDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$GCDaemon;->requestGC()V

    .line 322
    return-void
.end method

.method public static requestHeapTrim()V
    .registers 2

    .prologue
    .line 298
    # getter for: Ljava/lang/Daemons$HeapTrimmerDaemon;->INSTANCE:Ljava/lang/Daemons$HeapTrimmerDaemon;
    invoke-static {}, Ljava/lang/Daemons$HeapTrimmerDaemon;->access$300()Ljava/lang/Daemons$HeapTrimmerDaemon;

    move-result-object v1

    monitor-enter v1

    .line 299
    :try_start_5
    # getter for: Ljava/lang/Daemons$HeapTrimmerDaemon;->INSTANCE:Ljava/lang/Daemons$HeapTrimmerDaemon;
    invoke-static {}, Ljava/lang/Daemons$HeapTrimmerDaemon;->access$300()Ljava/lang/Daemons$HeapTrimmerDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 300
    monitor-exit v1

    .line 301
    return-void

    .line 300
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public static start()V
    .registers 1

    .prologue
    .line 39
    # getter for: Ljava/lang/Daemons$ReferenceQueueDaemon;->INSTANCE:Ljava/lang/Daemons$ReferenceQueueDaemon;
    invoke-static {}, Ljava/lang/Daemons$ReferenceQueueDaemon;->access$000()Ljava/lang/Daemons$ReferenceQueueDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$ReferenceQueueDaemon;->start()V

    .line 40
    # getter for: Ljava/lang/Daemons$FinalizerDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerDaemon;
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->access$100()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$FinalizerDaemon;->start()V

    .line 41
    # getter for: Ljava/lang/Daemons$FinalizerWatchdogDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerWatchdogDaemon;
    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->access$200()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->start()V

    .line 42
    # getter for: Ljava/lang/Daemons$HeapTrimmerDaemon;->INSTANCE:Ljava/lang/Daemons$HeapTrimmerDaemon;
    invoke-static {}, Ljava/lang/Daemons$HeapTrimmerDaemon;->access$300()Ljava/lang/Daemons$HeapTrimmerDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$HeapTrimmerDaemon;->start()V

    .line 43
    # getter for: Ljava/lang/Daemons$GCDaemon;->INSTANCE:Ljava/lang/Daemons$GCDaemon;
    invoke-static {}, Ljava/lang/Daemons$GCDaemon;->access$400()Ljava/lang/Daemons$GCDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$GCDaemon;->start()V

    .line 44
    return-void
.end method

.method public static stop()V
    .registers 1

    .prologue
    .line 47
    # getter for: Ljava/lang/Daemons$ReferenceQueueDaemon;->INSTANCE:Ljava/lang/Daemons$ReferenceQueueDaemon;
    invoke-static {}, Ljava/lang/Daemons$ReferenceQueueDaemon;->access$000()Ljava/lang/Daemons$ReferenceQueueDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$ReferenceQueueDaemon;->stop()V

    .line 48
    # getter for: Ljava/lang/Daemons$FinalizerDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerDaemon;
    invoke-static {}, Ljava/lang/Daemons$FinalizerDaemon;->access$100()Ljava/lang/Daemons$FinalizerDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$FinalizerDaemon;->stop()V

    .line 49
    # getter for: Ljava/lang/Daemons$FinalizerWatchdogDaemon;->INSTANCE:Ljava/lang/Daemons$FinalizerWatchdogDaemon;
    invoke-static {}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->access$200()Ljava/lang/Daemons$FinalizerWatchdogDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$FinalizerWatchdogDaemon;->stop()V

    .line 50
    # getter for: Ljava/lang/Daemons$HeapTrimmerDaemon;->INSTANCE:Ljava/lang/Daemons$HeapTrimmerDaemon;
    invoke-static {}, Ljava/lang/Daemons$HeapTrimmerDaemon;->access$300()Ljava/lang/Daemons$HeapTrimmerDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$HeapTrimmerDaemon;->stop()V

    .line 51
    # getter for: Ljava/lang/Daemons$GCDaemon;->INSTANCE:Ljava/lang/Daemons$GCDaemon;
    invoke-static {}, Ljava/lang/Daemons$GCDaemon;->access$400()Ljava/lang/Daemons$GCDaemon;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Daemons$GCDaemon;->stop()V

    .line 52
    return-void
.end method
