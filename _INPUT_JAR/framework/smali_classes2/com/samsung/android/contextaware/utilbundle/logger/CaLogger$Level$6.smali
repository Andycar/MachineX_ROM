.class final enum Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$6;
.super Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;
.source "CaLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level;-><init>(Ljava/lang/String;ILcom/samsung/android/contextaware/utilbundle/logger/CaLogger$1;)V

    return-void
.end method


# virtual methods
.method consoleLogging(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 189
    # getter for: Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isConsoleLogging:Z
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1a

    # getter for: Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLevel:I
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->access$200()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$6;->ordinal()I

    move-result v2

    if-gt v1, v2, :cond_1a

    const/4 v0, 0x1

    .line 191
    .local v0, "usable":Z
    :goto_11
    if-eqz v0, :cond_18

    .line 192
    const-string v1, "CAE"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_18
    const/4 v1, 0x0

    return-object v1

    .line 189
    .end local v0    # "usable":Z
    :cond_1a
    const/4 v0, 0x0

    goto :goto_11
.end method

.method fileLogging(Ljava/lang/String;)V
    .registers 8
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 199
    # getter for: Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->isFileLogging:Z
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->access$400()Z

    move-result v1

    if-eqz v1, :cond_27

    # getter for: Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->mLevel:I
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->access$200()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger$Level$6;->ordinal()I

    move-result v2

    if-gt v1, v2, :cond_27

    const/4 v0, 0x1

    .line 201
    .local v0, "usable":Z
    :goto_11
    if-eqz v0, :cond_26

    .line 202
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->getInstance()Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;

    move-result-object v1

    const-string v2, "CAELogger"

    const-string v3, "X"

    const-string v4, "CAE"

    const-string v5, ""

    # invokes: Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->getFilePattern(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4, v5, p1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->access$500(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaFileLogger;->logging(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_26
    return-void

    .line 199
    .end local v0    # "usable":Z
    :cond_27
    const/4 v0, 0x0

    goto :goto_11
.end method
