.class Lcom/android/server/analytics/data/collection/logcat/LogcatReader$2;
.super Ljava/lang/Object;
.source "LogcatReader.java"

# interfaces
.implements Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/analytics/data/collection/logcat/LogcatReader;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;


# direct methods
.method constructor <init>(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)V
    .registers 2

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$2;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .registers 1

    .prologue
    .line 249
    return-void
.end method

.method public onStarted()V
    .registers 1

    .prologue
    .line 257
    return-void
.end method

.method public processLogcatRecord(Ljava/lang/String;)V
    .registers 2
    .param p1, "record"    # Ljava/lang/String;

    .prologue
    .line 253
    return-void
.end method
