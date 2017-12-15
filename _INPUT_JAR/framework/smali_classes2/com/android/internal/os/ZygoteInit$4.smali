.class final Lcom/android/internal/os/ZygoteInit$4;
.super Ljava/lang/Object;
.source "ZygoteInit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/ZygoteInit;->parallelpreloadClasses()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$classList:Ljava/util/ArrayList;

.field final synthetic val$runtime:Ldalvik/system/VMRuntime;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ldalvik/system/VMRuntime;)V
    .registers 3

    .prologue
    .line 681
    iput-object p1, p0, Lcom/android/internal/os/ZygoteInit$4;->val$classList:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/internal/os/ZygoteInit$4;->val$runtime:Ldalvik/system/VMRuntime;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 684
    const/4 v9, -0x4

    invoke-static {v9}, Landroid/os/Process;->setThreadPriority(I)V

    .line 688
    const/4 v9, 0x1

    sput-boolean v9, Lcom/android/internal/os/ZygoteInit;->parallelPCThread2running:Z

    .line 689
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 690
    .local v6, "startTime":J
    const-wide/16 v10, 0x0

    .line 691
    .local v10, "time1":J
    const-wide/16 v12, 0x0

    .line 693
    .local v12, "time2":J
    # getter for: Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()I

    move-result v3

    .local v3, "i":I
    :goto_13
    # getter for: Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread1:I
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$100()I

    move-result v9

    # getter for: Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$400()I

    move-result v14

    add-int/2addr v9, v14

    if-ge v3, v9, :cond_f1

    .line 694
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/ZygoteInit$4;->val$classList:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 700
    .local v5, "line":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_29
    :try_start_29
    sget-object v9, Lcom/android/internal/os/ZygoteInit;->postLoadClasses:[Ljava/lang/String;

    array-length v9, v9

    if-ge v4, v9, :cond_52

    .line 703
    sget-object v9, Lcom/android/internal/os/ZygoteInit;->postLoadClasses:[Ljava/lang/String;

    aget-object v9, v9, v4

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_57

    .line 705
    const-string v9, "Zygote"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "postpone "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/4 v5, 0x0

    .line 710
    :cond_52
    if-nez v5, :cond_5a

    .line 693
    :cond_54
    :goto_54
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 700
    :cond_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 713
    :cond_5a
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 721
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v9

    # getter for: Lcom/android/internal/os/ZygoteInit;->PRELOAD_GC_THRESHOLD:I
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$200()I

    move-result v14

    if-le v9, v14, :cond_54

    .line 723
    const-string v9, "Zygote"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "!@GC at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 726
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/os/ZygoteInit$4;->val$runtime:Ldalvik/system/VMRuntime;

    invoke-virtual {v9}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 727
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V

    .line 728
    const-string v9, "Zygote"

    const-string v14, "!@GC end"

    invoke-static {v9, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catch Ljava/lang/ClassNotFoundException; {:try_start_29 .. :try_end_97} :catch_98
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_97} :catch_b2

    goto :goto_54

    .line 730
    :catch_98
    move-exception v2

    .line 731
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string v9, "Zygote"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Class not found for preloading: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 732
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_b2
    move-exception v8

    .line 733
    .local v8, "t":Ljava/lang/Throwable;
    const-string v9, "Zygote"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "!@Error preloading "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 735
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    invoke-static {v9}, Landroid/os/Process;->killProcess(I)V

    .line 736
    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/System;->exit(I)V

    .line 737
    instance-of v9, v8, Ljava/lang/Error;

    if-eqz v9, :cond_e4

    .line 738
    check-cast v8, Ljava/lang/Error;

    .end local v8    # "t":Ljava/lang/Throwable;
    throw v8

    .line 740
    .restart local v8    # "t":Ljava/lang/Throwable;
    :cond_e4
    instance-of v9, v8, Ljava/lang/RuntimeException;

    if-eqz v9, :cond_eb

    .line 741
    check-cast v8, Ljava/lang/RuntimeException;

    .end local v8    # "t":Ljava/lang/Throwable;
    throw v8

    .line 743
    .restart local v8    # "t":Ljava/lang/Throwable;
    :cond_eb
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9

    .line 746
    .end local v4    # "j":I
    .end local v5    # "line":Ljava/lang/String;
    .end local v8    # "t":Ljava/lang/Throwable;
    :cond_f1
    const-string v9, "Zygote"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "!@prldclss2: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    # getter for: Lcom/android/internal/os/ZygoteInit;->numberOfPreloadClassesforThread2:I
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->access$400()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " classes in "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v6

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "ms."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/internal/os/ZygoteInit;->parallelPCThread2running:Z

    .line 749
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    long-to-int v9, v14

    # setter for: Lcom/android/internal/os/ZygoteInit;->thread2time:I
    invoke-static {v9}, Lcom/android/internal/os/ZygoteInit;->access$502(I)I

    .line 750
    return-void
.end method
