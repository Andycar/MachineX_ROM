.class public Lcom/samsung/android/contextaware/InterruptModeContextList;
.super Ljava/lang/Object;
.source "InterruptModeContextList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/InterruptModeContextList$1;,
        Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/InterruptModeContextList;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/InterruptModeContextList;
    .registers 2

    .prologue
    .line 90
    sget-object v0, Lcom/samsung/android/contextaware/InterruptModeContextList;->instance:Lcom/samsung/android/contextaware/InterruptModeContextList;

    if-nez v0, :cond_13

    .line 91
    const-class v1, Lcom/samsung/android/contextaware/InterruptModeContextList;

    monitor-enter v1

    .line 92
    :try_start_7
    sget-object v0, Lcom/samsung/android/contextaware/InterruptModeContextList;->instance:Lcom/samsung/android/contextaware/InterruptModeContextList;

    if-nez v0, :cond_12

    .line 93
    new-instance v0, Lcom/samsung/android/contextaware/InterruptModeContextList;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/InterruptModeContextList;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/InterruptModeContextList;->instance:Lcom/samsung/android/contextaware/InterruptModeContextList;

    .line 95
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 97
    :cond_13
    sget-object v0, Lcom/samsung/android/contextaware/InterruptModeContextList;->instance:Lcom/samsung/android/contextaware/InterruptModeContextList;

    return-object v0

    .line 95
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public final isInterruptModeType(I)Z
    .registers 4
    .param p1, "key"    # I

    .prologue
    .line 108
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "service":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/InterruptModeContextList;->isInterruptModeType(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public final isInterruptModeType(Ljava/lang/String;)Z
    .registers 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 121
    const/4 v3, 0x0

    .line 123
    .local v3, "inInterrupt":Z
    invoke-static {}, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;->values()[Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_7
    if-ge v2, v4, :cond_16

    aget-object v1, v0, v2

    .line 125
    .local v1, "i":Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;
    # getter for: Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;->code:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;->access$100(Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 126
    const/4 v3, 0x1

    .line 131
    .end local v1    # "i":Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;
    :cond_16
    return v3

    .line 123
    .restart local v1    # "i":Lcom/samsung/android/contextaware/InterruptModeContextList$InterruptModeContextType;
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method
