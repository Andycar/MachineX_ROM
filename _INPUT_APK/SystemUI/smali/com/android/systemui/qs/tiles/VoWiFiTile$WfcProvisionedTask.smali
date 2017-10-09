.class Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;
.super Landroid/os/AsyncTask;
.source "VoWiFiTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/VoWiFiTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfcProvisionedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/VoWiFiTile;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/VoWiFiTile;Lcom/android/systemui/qs/tiles/VoWiFiTile$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/tiles/VoWiFiTile;
    .param p2, "x1"    # Lcom/android/systemui/qs/tiles/VoWiFiTile$1;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;-><init>(Lcom/android/systemui/qs/tiles/VoWiFiTile;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 57
    check-cast p1, [Ljava/lang/Boolean;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;->doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Boolean;)Ljava/lang/Void;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Boolean;

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$200(Lcom/android/systemui/qs/tiles/VoWiFiTile;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$102(Lcom/android/systemui/qs/tiles/VoWiFiTile;Z)Z

    .line 61
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$100(Lcom/android/systemui/qs/tiles/VoWiFiTile;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$300(Lcom/android/systemui/qs/tiles/VoWiFiTile;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    const-string v2, "com.oem.smartwifi.WFC_AIR_PLANE_MODE"

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$400(Lcom/android/systemui/qs/tiles/VoWiFiTile;Ljava/lang/String;)V

    .line 74
    :goto_0
    return-object v3

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$500(Lcom/android/systemui/qs/tiles/VoWiFiTile;Z)V

    goto :goto_0

    .line 69
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/VoWiFiTile$WfcProvisionedTask;->this$0:Lcom/android/systemui/qs/tiles/VoWiFiTile;

    const-string v2, "com.oem.smartwifisupport.WIFI_CALLING"

    invoke-static {v1, v2}, Lcom/android/systemui/qs/tiles/VoWiFiTile;->access$600(Lcom/android/systemui/qs/tiles/VoWiFiTile;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "VoWiFiTile"

    const-string v2, "Cannot find WfcStartupActivity!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
