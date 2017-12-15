.class public Lcom/samsung/android/contextaware/MultiModeContextList;
.super Ljava/lang/Object;
.source "MultiModeContextList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/MultiModeContextList$1;,
        Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    }
.end annotation


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/MultiModeContextList;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/MultiModeContextList;
    .registers 2

    .prologue
    .line 101
    sget-object v0, Lcom/samsung/android/contextaware/MultiModeContextList;->instance:Lcom/samsung/android/contextaware/MultiModeContextList;

    if-nez v0, :cond_13

    .line 102
    const-class v1, Lcom/samsung/android/contextaware/MultiModeContextList;

    monitor-enter v1

    .line 103
    :try_start_7
    sget-object v0, Lcom/samsung/android/contextaware/MultiModeContextList;->instance:Lcom/samsung/android/contextaware/MultiModeContextList;

    if-nez v0, :cond_12

    .line 104
    new-instance v0, Lcom/samsung/android/contextaware/MultiModeContextList;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/MultiModeContextList;-><init>()V

    sput-object v0, Lcom/samsung/android/contextaware/MultiModeContextList;->instance:Lcom/samsung/android/contextaware/MultiModeContextList;

    .line 106
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 108
    :cond_13
    sget-object v0, Lcom/samsung/android/contextaware/MultiModeContextList;->instance:Lcom/samsung/android/contextaware/MultiModeContextList;

    return-object v0

    .line 106
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
    .line 159
    const-string v1, ""

    .line 161
    .local v1, "code":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->values()[Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_8
    if-ge v3, v4, :cond_16

    aget-object v2, v0, v3

    .line 162
    .local v2, "i":Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->ordinal()I

    move-result v5

    if-ne v5, p1, :cond_2a

    .line 163
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    .line 168
    .end local v2    # "i":Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    :cond_16
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 169
    sget-object v5, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_CODE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 174
    :cond_29
    return-object v1

    .line 161
    .restart local v2    # "i":Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8
.end method

.method public final getServiceOrdinal(Ljava/lang/String;)I
    .registers 8
    .param p1, "serviceCode"    # Ljava/lang/String;

    .prologue
    .line 139
    const/4 v4, 0x0

    .line 141
    .local v4, "ordinal":I
    invoke-static {}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->values()[Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_7
    if-ge v2, v3, :cond_19

    aget-object v1, v0, v2

    .line 142
    .local v1, "i":Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 143
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->ordinal()I

    move-result v4

    .line 148
    .end local v1    # "i":Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    :cond_19
    return v4

    .line 141
    .restart local v1    # "i":Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method public final isIncluded(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 185
    const/4 v1, 0x1

    .line 188
    .local v1, "included":Z
    :try_start_1
    invoke-static {p1}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_4} :catch_5

    .line 193
    :goto_4
    return v1

    .line 189
    :catch_5
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public final isMultiModeType(Ljava/lang/String;)Z
    .registers 8
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v3, 0x0

    .line 121
    .local v3, "inMulti":Z
    invoke-static {}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->values()[Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_7
    if-ge v2, v4, :cond_16

    aget-object v1, v0, v2

    .line 122
    .local v1, "i":Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    # getter for: Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->code:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;->access$100(Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 123
    const/4 v3, 0x1

    .line 128
    .end local v1    # "i":Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    :cond_16
    return v3

    .line 121
    .restart local v1    # "i":Lcom/samsung/android/contextaware/MultiModeContextList$MultiModeContextType;
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method
