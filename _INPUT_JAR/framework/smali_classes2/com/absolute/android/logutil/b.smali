.class public Lcom/absolute/android/logutil/b;
.super Lcom/absolute/android/logutil/a;
.source "SourceFile"


# static fields
.field static final synthetic b:Z

.field private static final d:Z = false

.field private static final e:Z = true


# instance fields
.field private c:Lcom/absolute/android/persistence/IABTPersistenceLog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/absolute/android/logutil/b;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/absolute/android/logutil/b;->b:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/absolute/android/logutil/a;-><init>()V

    return-void
.end method


# virtual methods
.method public logMessage(ILjava/lang/String;)V
    .registers 7

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    .line 46
    invoke-super {p0, p1, p2}, Lcom/absolute/android/logutil/a;->logMessage(ILjava/lang/String;)V

    .line 49
    const/4 v1, 0x0

    .line 50
    packed-switch p1, :pswitch_data_6c

    move v0, v1

    .line 69
    :goto_a
    :pswitch_a
    if-eqz v0, :cond_3b

    .line 74
    :try_start_c
    const-string v0, "Unknown"

    .line 76
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 77
    sget-boolean v2, Lcom/absolute/android/logutil/b;->b:Z

    if-nez v2, :cond_3e

    array-length v2, v1

    if-gt v2, v3, :cond_3e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_23} :catch_23

    .line 85
    :catch_23
    move-exception v0

    .line 86
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LogUtilwithPS.logMessage: exception caught. Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v1, v0}, Lcom/absolute/android/logutil/a;->logMessage(ILjava/lang/String;)V

    .line 89
    :cond_3b
    :goto_3b
    return-void

    :pswitch_3c
    move v0, v1

    .line 58
    goto :goto_a

    .line 78
    :cond_3e
    :try_start_3e
    array-length v2, v1

    if-le v2, v3, :cond_66

    .line 79
    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_66
    iget-object v1, p0, Lcom/absolute/android/logutil/b;->c:Lcom/absolute/android/persistence/IABTPersistenceLog;

    invoke-interface {v1, p1, v0, p2}, Lcom/absolute/android/persistence/IABTPersistenceLog;->logMessage(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_6b} :catch_23

    goto :goto_3b

    .line 50
    :pswitch_data_6c
    .packed-switch 0x2
        :pswitch_a
        :pswitch_3c
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public start(Landroid/content/Context;)V
    .registers 6

    .prologue
    .line 30
    :try_start_0
    const-string v0, "ABTPersistenceService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistence/ABTPersistenceManager;

    .line 32
    if-nez v0, :cond_2b

    .line 33
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "LogUtilWithPS.ctor abtPersistMgr == null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_12

    .line 37
    :catch_12
    move-exception v0

    .line 38
    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "LogUtilwithPS.start: exception caught. Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v1, v0}, Lcom/absolute/android/logutil/a;->logMessage(ILjava/lang/String;)V

    .line 42
    :goto_2a
    return-void

    .line 35
    :cond_2b
    :try_start_2b
    const-string v1, "abt-persistence-service"

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistence/ABTPersistenceManager;->getLog(Ljava/lang/String;)Lcom/absolute/android/persistence/IABTPersistenceLog;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/logutil/b;->c:Lcom/absolute/android/persistence/IABTPersistenceLog;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_33} :catch_12

    goto :goto_2a
.end method
