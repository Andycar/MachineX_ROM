.class Lcom/android/server/usage/UsageStatsDatabase$1;
.super Ljava/lang/Object;
.source "UsageStatsDatabase.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usage/UsageStatsDatabase;->indexFilesLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UsageStatsDatabase;


# direct methods
.method constructor <init>(Lcom/android/server/usage/UsageStatsDatabase;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/server/usage/UsageStatsDatabase$1;->this$0:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 4
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 102
    const-string v0, ".bak"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
