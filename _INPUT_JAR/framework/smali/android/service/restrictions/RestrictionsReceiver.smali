.class public abstract Landroid/service/restrictions/RestrictionsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RestrictionsReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RestrictionsReceiver"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 77
    .local v6, "action":Ljava/lang/String;
    const-string v0, "android.content.action.REQUEST_PERMISSION"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 78
    const-string v0, "android.content.extra.PACKAGE_NAME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "packageName":Ljava/lang/String;
    const-string v0, "android.content.extra.REQUEST_TYPE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "requestType":Ljava/lang/String;
    const-string v0, "android.content.extra.REQUEST_ID"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 81
    .local v4, "requestId":Ljava/lang/String;
    const-string v0, "android.content.extra.REQUEST_BUNDLE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/os/PersistableBundle;

    .local v5, "request":Landroid/os/PersistableBundle;
    move-object v0, p0

    move-object v1, p1

    .line 83
    invoke-virtual/range {v0 .. v5}, Landroid/service/restrictions/RestrictionsReceiver;->onRequestPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 85
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "requestType":Ljava/lang/String;
    .end local v4    # "requestId":Ljava/lang/String;
    .end local v5    # "request":Landroid/os/PersistableBundle;
    :cond_2b
    return-void
.end method

.method public abstract onRequestPermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/PersistableBundle;)V
.end method
