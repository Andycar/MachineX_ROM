.class Lcom/android/settings/wifi/WfcHelper$WfcStateObserver;
.super Landroid/database/ContentObserver;
.source "WfcHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WfcHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WfcStateObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;

    .prologue
    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 36
    iput-object p1, p0, Lcom/android/settings/wifi/WfcHelper$WfcStateObserver;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/android/settings/wifi/WfcHelper$WfcStateObserver;->mListener:Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;

    .line 38
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    .line 41
    new-instance v0, Lcom/android/settings/wifi/WfcHelper$WfcStateTask;

    iget-object v1, p0, Lcom/android/settings/wifi/WfcHelper$WfcStateObserver;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/WfcHelper$WfcStateObserver;->mListener:Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WfcHelper$WfcStateTask;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WfcHelper$WfcStateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 42
    return-void
.end method
