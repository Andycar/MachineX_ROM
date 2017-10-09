.class Lcom/android/settings/wifi/WfcHelper$WfcStateTask;
.super Landroid/os/AsyncTask;
.source "WfcHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WfcHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WfcStateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mListener:Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/settings/wifi/WfcHelper$WfcStateTask;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/settings/wifi/WfcHelper$WfcStateTask;->mListener:Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;

    .line 52
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/wifi/WfcHelper$WfcStateTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/wifi/WfcHelper;->queryWfcState(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WfcHelper$WfcStateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/Integer;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/wifi/WfcHelper$WfcStateTask;->mListener:Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;->onStateChanged(I)V

    .line 62
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 45
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WfcHelper$WfcStateTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
