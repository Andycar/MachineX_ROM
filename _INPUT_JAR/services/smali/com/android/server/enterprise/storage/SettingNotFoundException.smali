.class public Lcom/android/server/enterprise/storage/SettingNotFoundException;
.super Landroid/util/AndroidException;
.source "SettingNotFoundException.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method
