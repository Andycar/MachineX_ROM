.class public Lcom/android/server/enterprise/log/ConsoleLogger;
.super Lcom/android/server/enterprise/log/Logger;
.source "ConsoleLogger.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConsoleLogger"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "loggerName"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/log/Logger;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public isLoggable(I)Z
    .registers 4
    .param p1, "lvl"    # I

    .prologue
    const/4 v0, 0x1

    .line 46
    iget v1, p0, Lcom/android/server/enterprise/log/ConsoleLogger;->level:I

    if-gt v1, p1, :cond_a

    iget v1, p0, Lcom/android/server/enterprise/log/ConsoleLogger;->level:I

    if-eq v1, v0, :cond_a

    .line 49
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public log(ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "level"    # I
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/log/ConsoleLogger;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 57
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_9
    return-void
.end method
