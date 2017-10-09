.class Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;
.super Landroid/os/AsyncTask;
.source "VoWiFiTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/VoWiFiTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfcEnableTask"
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
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/VoWiFiTile;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/VoWiFiTile;Lcom/android/systemui/qs/tiles/VoWiFiTile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;
    .param p2, "x1"    # Lcom/android/systemui/qs/tiles/VoWiFiTile$1;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;-><init>(Lcom/android/systemui/qs/tiles/VoWiFiTile;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$700(Lcom/android/systemui/qs/tiles/VoWiFiTile;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 78
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "state"    # Ljava/lang/Integer;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v5, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v4, v3, :cond_1

    :cond_0
    move v0, v2

    .line 87
    .local v0, "isTransitioning":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 88
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$800(Lcom/android/systemui/qs/tiles/VoWiFiTile;Ljava/lang/Object;)V

    .line 98
    :goto_1
    return-void

    .end local v0    # "isTransitioning":Z
    :cond_1
    move v0, v1

    .line 86
    goto :goto_0

    .line 91
    .restart local v0    # "isTransitioning":Z
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 92
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$900(Lcom/android/systemui/qs/tiles/VoWiFiTile;Ljava/lang/Object;)V

    .line 93
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$1000(Lcom/android/systemui/qs/tiles/VoWiFiTile;)V

    .line 97
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    invoke-static {v2, v1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$1202(Lcom/android/systemui/qs/tiles/VoWiFiTile;Z)Z

    goto :goto_1

    .line 95
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$1100(Lcom/android/systemui/qs/tiles/VoWiFiTile;Ljava/lang/Object;)V

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 78
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcEnableTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
