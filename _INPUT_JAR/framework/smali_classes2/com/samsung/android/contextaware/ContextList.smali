.class public Lcom/samsung/android/contextaware/ContextList;
.super Ljava/lang/Object;
.source "ContextList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/ContextList$ContextType;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/ContextList;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/ContextList;
    .registers 2

    .prologue
    .line 308
    sget-object v0, Lcom/samsung/android/contextaware/ContextList;->instance:Lcom/samsung/android/contextaware/ContextList;

    if-nez v0, :cond_13

    .line 309
    const-class v1, Lcom/samsung/android/contextaware/ContextList;

    monitor-enter v1

    .line 310
    :try_start_7
    sget-object v0, Lcom/samsung/android/contextaware/ContextList;->instance:Lcom/samsung/android/contextaware/ContextList;

    if-nez v0, :cond_12

    .line 311
    new-instance v0, Lcom/samsung/android/contextaware/ContextList;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/ContextList;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/ContextList;->instance:Lcom/samsung/android/contextaware/ContextList;

    .line 313
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 315
    :cond_13
    sget-object v0, Lcom/samsung/android/contextaware/ContextList;->instance:Lcom/samsung/android/contextaware/ContextList;

    return-object v0

    .line 313
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method


# virtual methods
.method public final getServiceCode(I)Ljava/lang/String;
    .registers 8
    .param p1, "serviceOrdinal"    # I

    .prologue
    .line 346
    const-string v1, ""

    .line 348
    .local v1, "code":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList$ContextType;->values()[Lcom/samsung/android/contextaware/ContextList$ContextType;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/ContextList$ContextType;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_8
    if-ge v3, v4, :cond_16

    aget-object v2, v0, v3

    .line 349
    .local v2, "i":Lcom/samsung/android/contextaware/ContextList$ContextType;
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v5

    if-ne v5, p1, :cond_2a

    .line 350
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    .line 355
    .end local v2    # "i":Lcom/samsung/android/contextaware/ContextList$ContextType;
    :cond_16
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 356
    sget-object v5, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_CODE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 361
    :cond_29
    return-object v1

    .line 348
    .restart local v2    # "i":Lcom/samsung/android/contextaware/ContextList$ContextType;
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8
.end method

.method public final getServiceOrdinal(Ljava/lang/String;)I
    .registers 8
    .param p1, "serviceCode"    # Ljava/lang/String;

    .prologue
    .line 326
    const/4 v4, 0x0

    .line 328
    .local v4, "ordinal":I
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList$ContextType;->values()[Lcom/samsung/android/contextaware/ContextList$ContextType;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/ContextList$ContextType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_7
    if-ge v2, v3, :cond_19

    aget-object v1, v0, v2

    .line 329
    .local v1, "i":Lcom/samsung/android/contextaware/ContextList$ContextType;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 330
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/ContextList$ContextType;->ordinal()I

    move-result v4

    .line 335
    .end local v1    # "i":Lcom/samsung/android/contextaware/ContextList$ContextType;
    :cond_19
    return v4

    .line 328
    .restart local v1    # "i":Lcom/samsung/android/contextaware/ContextList$ContextType;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method
