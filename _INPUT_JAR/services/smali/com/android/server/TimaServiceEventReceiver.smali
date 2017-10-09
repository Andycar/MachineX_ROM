.class public Lcom/android/server/TimaServiceEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimaServiceEventReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TimaServiceEventReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/TimaService;->iBootCompleted:Z

    .line 36
    const-string v0, "TimaServiceEventReceiver"

    const-string v1, "TimaServiceEventReceiver : onReceive"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method
