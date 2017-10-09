.class final Lcom/android/server/analytics/data/collection/logcat/EventLogTags$1;
.super Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$IOProcessor;
.source "EventLogTags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/analytics/data/collection/logcat/EventLogTags;->getTagNames(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$IOProcessor",
        "<",
        "Ljava/io/BufferedReader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$tagNames:Ljava/util/List;

.field final synthetic val$tagNumberPrefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/server/analytics/data/collection/logcat/EventLogTags$1;->val$tagNumberPrefix:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/analytics/data/collection/logcat/EventLogTags$1;->val$tagNames:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/server/analytics/data/collection/utils/IOExceptionHandler$IOProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public close(Ljava/io/BufferedReader;)V
    .registers 2
    .param p1, "io"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 82
    return-void
.end method

.method public bridge synthetic close(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    check-cast p1, Ljava/io/BufferedReader;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/analytics/data/collection/logcat/EventLogTags$1;->close(Ljava/io/BufferedReader;)V

    return-void
.end method

.method public open()Ljava/io/BufferedReader;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/system/etc/event-log-tags"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    return-object v0
.end method

.method public bridge synthetic open()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/server/analytics/data/collection/logcat/EventLogTags$1;->open()Ljava/io/BufferedReader;

    move-result-object v0

    return-object v0
.end method

.method public process(Ljava/io/BufferedReader;)V
    .registers 5
    .param p1, "io"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "line":Ljava/lang/String;
    if-eqz v0, :cond_18

    .line 94
    iget-object v1, p0, Lcom/android/server/analytics/data/collection/logcat/EventLogTags$1;->val$tagNumberPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/server/analytics/data/collection/logcat/EventLogTags$1;->val$tagNames:Ljava/util/List;

    # invokes: Lcom/android/server/analytics/data/collection/logcat/EventLogTags;->extractTagName(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/analytics/data/collection/logcat/EventLogTags;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_18
    return-void
.end method

.method public bridge synthetic process(Ljava/lang/Object;)V
    .registers 2
    .param p1, "x0"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    check-cast p1, Ljava/io/BufferedReader;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/analytics/data/collection/logcat/EventLogTags$1;->process(Ljava/io/BufferedReader;)V

    return-void
.end method
