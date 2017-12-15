.class public final enum Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;
.super Ljava/lang/Enum;
.source "ContextAwareServiceErrors.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/fault/IContextAwareErrors;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;",
        ">;",
        "Lcom/samsung/android/contextaware/manager/fault/IContextAwareErrors;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_BINDER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_BUNDLE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_CONTEXT_INFO_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_CONTEXT_PROVIDER_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_DEPENDENT_SERVICE_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_DEPENDENT_SERVICE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_LISTENER_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_LISTENER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_LOOPER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_NOT_SUPPORT_CMD:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_SERVICE_CODE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_SERVICE_COUNT_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_SERVICE_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_SERVICE_HANDLER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_SERVICE_NOT_RUNNING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_SUB_COLLECTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_TIME_OUT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_UNKNOWN:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum ERROR_VERSION_SETTING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

.field public static final enum SUCCESS:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;


# instance fields
.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 28
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string v1, "SUCCESS"

    const-string v2, "Success"

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->SUCCESS:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 31
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string v1, "ERROR_UNKNOWN"

    const-string v2, "ERROR : Unknown"

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_UNKNOWN:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 34
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string v1, "ERROR_NOT_SUPPORT_CMD"

    const-string v2, "ERROR : not support commend"

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_NOT_SUPPORT_CMD:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 37
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string v1, "ERROR_DEPENDENT_SERVICE_NULL_EXCEPTION"

    const-string v2, "ERROR : Dependent service is null"

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_DEPENDENT_SERVICE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 40
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string v1, "ERROR_DEPENDENT_SERVICE_NOT_REGISTERED"

    const-string v2, "ERROR : Dependent service isn\'t registered"

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_DEPENDENT_SERVICE_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 44
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string v1, "ERROR_LISTENER_NOT_REGISTERED"

    const/4 v2, 0x5

    const-string v3, "ERROR : Listener isn\'t registered"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LISTENER_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 47
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string v1, "ERROR_LISTENER_NULL_EXCEPTION"

    const/4 v2, 0x6

    const-string v3, "ERROR : Listener is null"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LISTENER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 50
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string v1, "ERROR_BINDER_NULL_EXCEPTION"

    const/4 v2, 0x7

    const-string v3, "ERROR : Binder is null"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BINDER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 53
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string v1, "ERROR_LOOPER_NULL_EXCEPTION"

    const/16 v2, 0x8

    const-string v3, "ERROR : Looper is null"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LOOPER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 56
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string v1, "ERROR_CONTEXT_NULL_EXCEPTION"

    const/16 v2, 0x9

    const-string v3, "ERROR : Context is null"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 59
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string v1, "ERROR_SERVICE_HANDLER_NULL_EXCEPTION"

    const/16 v2, 0xa

    const-string v3, "ERROR : Service handler is null"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_HANDLER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 62
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string v1, "ERROR_CONTEXT_INFO_NULL_EXCEPTION"

    const/16 v2, 0xb

    const-string v3, "ERROR : Context information is null"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_INFO_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 65
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string v1, "ERROR_SUB_COLLECTION"

    const/16 v2, 0xc

    const-string v3, "ERROR : Sub-Collection operation is fault"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SUB_COLLECTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 68
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string v1, "ERROR_BUNDLE_NULL_EXCEPTION"

    const/16 v2, 0xd

    const-string v3, "ERROR : Bundle is null"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BUNDLE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 71
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string v1, "ERROR_SERVICE_FAULT"

    const/16 v2, 0xe

    const-string v3, "Service is fault"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 74
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string v1, "ERROR_VERSION_SETTING"

    const/16 v2, 0xf

    const-string v3, "ERROR : Version is already set"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_VERSION_SETTING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 77
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string v1, "ERROR_SERVICE_CODE_NULL_EXCEPTION"

    const/16 v2, 0x10

    const-string v3, "ERROR : Service code is null"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_CODE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 80
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string v1, "ERROR_SERVICE_NOT_RUNNING"

    const/16 v2, 0x11

    const-string v3, "ERROR : Service is not running"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_NOT_RUNNING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 83
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string v1, "ERROR_CONTEXT_PROVIDER_FAULT"

    const/16 v2, 0x12

    const-string v3, "ERROR : Context provider is fault"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_PROVIDER_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 86
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string v1, "ERROR_SERVICE_COUNT_FAULT"

    const/16 v2, 0x13

    const-string v3, "Service count is fault"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_COUNT_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 89
    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    const-string v1, "ERROR_TIME_OUT"

    const/16 v2, 0x14

    const-string v3, "ERROR : Time out"

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_TIME_OUT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 25
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->SUCCESS:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_UNKNOWN:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_NOT_SUPPORT_CMD:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_DEPENDENT_SERVICE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_DEPENDENT_SERVICE_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LISTENER_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LISTENER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BINDER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_LOOPER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_HANDLER_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_INFO_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SUB_COLLECTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BUNDLE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_VERSION_SETTING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_CODE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_NOT_RUNNING:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_PROVIDER_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_SERVICE_COUNT_FAULT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_TIME_OUT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->$VALUES:[Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput-object p3, p0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->message:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public static final getMessage(I)Ljava/lang/String;
    .registers 7
    .param p0, "code"    # I

    .prologue
    .line 130
    const-string v4, ""

    .line 132
    .local v4, "msg":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->values()[Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    move-result-object v0

    .local v0, "arr$":[Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_8
    if-ge v2, v3, :cond_14

    aget-object v1, v0, v2

    .line 133
    .local v1, "i":Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ordinal()I

    move-result v5

    if-ne v5, p0, :cond_20

    .line 134
    iget-object v4, v1, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->message:Ljava/lang/String;

    .line 139
    .end local v1    # "i":Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;
    :cond_14
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 140
    const-string v5, "Message code is fault"

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 143
    :cond_1f
    return-object v4

    .line 132
    .restart local v1    # "i":Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_8
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->$VALUES:[Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, [Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .registers 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ordinal()I

    move-result v0

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->message:Ljava/lang/String;

    return-object v0
.end method

.method public notifyFatalError()V
    .registers 1

    .prologue
    .line 156
    return-void
.end method
