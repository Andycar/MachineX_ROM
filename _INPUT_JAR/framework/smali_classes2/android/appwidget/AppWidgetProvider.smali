.class public Landroid/appwidget/AppWidgetProvider;
.super Landroid/content/BroadcastReceiver;
.source "AppWidgetProvider.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I
    .param p4, "newOptions"    # Landroid/os/Bundle;

    .prologue
    .line 140
    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 156
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 190
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 63
    .local v3, "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_24

    .line 64
    const-string v7, "appWidgetIds"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v2

    .line 65
    .local v2, "appWidgetIds":[I
    if-eqz v2, :cond_24

    array-length v7, v2

    if-lez v7, :cond_24

    .line 66
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v2}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 99
    .end local v2    # "appWidgetIds":[I
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_24
    :goto_24
    return-void

    .line 69
    :cond_25
    const-string v7, "android.appwidget.action.APPWIDGET_DELETED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 71
    .restart local v3    # "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_24

    const-string v7, "appWidgetId"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 72
    const-string v7, "appWidgetId"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 73
    .local v1, "appWidgetId":I
    const/4 v7, 0x1

    new-array v7, v7, [I

    const/4 v8, 0x0

    aput v1, v7, v8

    invoke-virtual {p0, p1, v7}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    goto :goto_24

    .line 75
    .end local v1    # "appWidgetId":I
    .end local v3    # "extras":Landroid/os/Bundle;
    :cond_4b
    const-string v7, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7d

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 77
    .restart local v3    # "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_24

    const-string v7, "appWidgetId"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_24

    const-string v7, "appWidgetOptions"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 79
    const-string v7, "appWidgetId"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 80
    .restart local v1    # "appWidgetId":I
    const-string v7, "appWidgetOptions"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 81
    .local v6, "widgetExtras":Landroid/os/Bundle;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v1, v6}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    goto :goto_24

    .line 84
    .end local v1    # "appWidgetId":I
    .end local v3    # "extras":Landroid/os/Bundle;
    .end local v6    # "widgetExtras":Landroid/os/Bundle;
    :cond_7d
    const-string v7, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_89

    .line 85
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    goto :goto_24

    .line 86
    :cond_89
    const-string v7, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_95

    .line 87
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    goto :goto_24

    .line 88
    :cond_95
    const-string v7, "android.appwidget.action.APPWIDGET_RESTORED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 89
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 90
    .restart local v3    # "extras":Landroid/os/Bundle;
    if-eqz v3, :cond_24

    .line 91
    const-string v7, "appWidgetOldIds"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    .line 92
    .local v5, "oldIds":[I
    const-string v7, "appWidgetIds"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 93
    .local v4, "newIds":[I
    if-eqz v5, :cond_24

    array-length v7, v5

    if-lez v7, :cond_24

    .line 94
    invoke-virtual {p0, p1, v5, v4}, Landroid/appwidget/AppWidgetProvider;->onRestored(Landroid/content/Context;[I[I)V

    .line 95
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v7

    invoke-virtual {p0, p1, v7, v4}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    goto/16 :goto_24
.end method

.method public onRestored(Landroid/content/Context;[I[I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oldWidgetIds"    # [I
    .param p3, "newWidgetIds"    # [I

    .prologue
    .line 210
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 121
    return-void
.end method
