.class final Lcom/android/settings/notification/OtherSoundSettings$3;
.super Lcom/android/settings/notification/SettingPref;
.source "OtherSoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/OtherSoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method varargs constructor <init>(ILjava/lang/String;Ljava/lang/String;I[I)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # [I

    .prologue
    .line 125
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/notification/SettingPref;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    return-void
.end method


# virtual methods
.method protected setSetting(Landroid/content/Context;I)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "value"    # I

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v3, 0x4

    const/4 v2, 0x3

    .line 128
    if-eqz p2, :cond_0

    .line 129
    invoke-static {}, Lcom/android/settings/notification/OtherSoundSettings;->access$100()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 130
    invoke-static {}, Lcom/android/settings/notification/OtherSoundSettings;->access$100()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/notification/OtherSoundSettings;->access$100()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 135
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/SettingPref;->setSetting(Landroid/content/Context;I)Z

    move-result v0

    return v0

    .line 132
    :cond_0
    invoke-static {}, Lcom/android/settings/notification/OtherSoundSettings;->access$100()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 133
    invoke-static {}, Lcom/android/settings/notification/OtherSoundSettings;->access$100()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/notification/OtherSoundSettings;->access$100()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
