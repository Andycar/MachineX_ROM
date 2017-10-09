.class Lcom/android/server/analytics/data/collection/input/InputEventDataCollector$1;
.super Ljava/lang/Object;
.source "InputEventDataCollector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;


# direct methods
.method constructor <init>(Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/server/analytics/data/collection/input/InputEventDataCollector$1;->this$0:Lcom/android/server/analytics/data/collection/input/InputEventDataCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 111
    :try_start_0
    const-string v1, "analytics"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_5} :catch_b

    .line 117
    :goto_5
    return-void

    .line 112
    :catch_6
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {v0}, Ljava/lang/Error;->printStackTrace()V

    goto :goto_5
.end method
