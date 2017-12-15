.class public final Landroid/util/secutil/LogSwitcher;
.super Ljava/lang/Object;
.source "LogSwitcher.java"


# static fields
.field public static isShowingGlobalLog:Z

.field public static isShowingSecDLog:Z

.field public static isShowingSecELog:Z

.field public static isShowingSecILog:Z

.field public static isShowingSecVLog:Z

.field public static isShowingSecWLog:Z

.field public static isShowingSecWtfLog:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 10
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    .line 12
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecVLog:Z

    .line 13
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecDLog:Z

    .line 14
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecILog:Z

    .line 15
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    .line 16
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecELog:Z

    .line 18
    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z

    .line 24
    :try_start_f
    const-string v0, "1"

    const-string/jumbo v1, "persist.log.seclevel"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    .line 28
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecVLog:Z

    .line 29
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecDLog:Z

    .line 30
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecILog:Z

    .line 31
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWLog:Z

    .line 32
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecELog:Z

    .line 34
    sget-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingGlobalLog:Z

    sput-boolean v0, Landroid/util/secutil/LogSwitcher;->isShowingSecWtfLog:Z
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_38} :catch_39

    .line 38
    :goto_38
    return-void

    .line 35
    :catch_39
    move-exception v0

    goto :goto_38
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
