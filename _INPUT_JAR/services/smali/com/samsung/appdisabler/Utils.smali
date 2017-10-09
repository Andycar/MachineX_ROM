.class public Lcom/samsung/appdisabler/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final IS_SECURE:Z

.field private static final TAG:Ljava/lang/String; = "AppDisabler"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    invoke-static {}, Lcom/samsung/appdisabler/Utils;->getSecure()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/appdisabler/Utils;->IS_SECURE:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LogE(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 39
    const-string v0, "AppDisabler"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method

.method public static LogE(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 43
    const-string v0, "AppDisabler"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 44
    return-void
.end method

.method public static LogI(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 27
    sget-boolean v0, Lcom/samsung/appdisabler/Utils;->IS_SECURE:Z

    if-eqz v0, :cond_9

    .line 28
    const-string v0, "AppDisabler"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_9
    return-void
.end method

.method public static LogW(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 33
    sget-boolean v0, Lcom/samsung/appdisabler/Utils;->IS_SECURE:Z

    if-eqz v0, :cond_9

    .line 34
    const-string v0, "AppDisabler"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    :cond_9
    return-void
.end method

.method private static getSecure()Z
    .registers 3

    .prologue
    .line 16
    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    .line 19
    .local v1, "type":Ljava/lang/String;
    const-string v0, "eng"

    .line 20
    .local v0, "ENG":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 21
    const/4 v2, 0x1

    .line 23
    :goto_b
    return v2

    :cond_c
    const/4 v2, 0x0

    goto :goto_b
.end method
