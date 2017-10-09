.class public Lcom/android/systemui/DiagonosticReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DiagonosticReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DiagonosticReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    const-string v0, "DiagonosticReceiver"

    const-string v1, "Receive"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void
.end method
