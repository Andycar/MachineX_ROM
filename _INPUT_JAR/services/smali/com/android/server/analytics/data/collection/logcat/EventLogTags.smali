.class Lcom/android/server/analytics/data/collection/logcat/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final APPLICATION_TAG_NUMBER_PREFIX:Ljava/lang/String; = "300"

.field public static final BROWSER_TAG_NUMBER_PREFIX:Ljava/lang/String; = "701"

.field private static final EVENTS_LOG_TAGS_FILE:Ljava/lang/String; = "/system/etc/event-log-tags"

.field private static final TOKEN_SEPARATOR:Ljava/lang/String; = " "


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {p0}, Lcom/android/server/analytics/data/collection/logcat/EventLogTags;->extractTagName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final extractTagName(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "sb"    # Ljava/lang/String;

    .prologue
    .line 61
    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 62
    .local v1, "start":I
    const-string v2, " "

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 63
    .local v0, "end":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getTagNames(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p0, "tagNumberPrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v0, "tagNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/android/server/analytics/data/collection/logcat/EventLogTags$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/analytics/data/collection/logcat/EventLogTags$1;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {v1}, Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler;->process(Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$IOProcessor;)V

    .line 102
    return-object v0
.end method
