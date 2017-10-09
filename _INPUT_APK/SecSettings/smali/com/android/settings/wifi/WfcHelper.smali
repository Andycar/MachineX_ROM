.class public Lcom/android/settings/wifi/WfcHelper;
.super Ljava/lang/Object;
.source "WfcHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WfcHelper$WfcStateTask;,
        Lcom/android/settings/wifi/WfcHelper$WfcStateObserver;,
        Lcom/android/settings/wifi/WfcHelper$WfcStateChangedListener;
    }
.end annotation


# static fields
.field static final WFC_IS_PROVISIONED_CONTENT_URI:Landroid/net/Uri;

.field static final WFC_STATE_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-string v0, "content://com.oem.smartwifisupport.provider/wfc_state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WfcHelper;->WFC_STATE_CONTENT_URI:Landroid/net/Uri;

    .line 21
    const-string v0, "content://com.oem.smartwifisupport.provider/wfc_is_provisioned"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/WfcHelper;->WFC_IS_PROVISIONED_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method static queryWfcState(Landroid/content/Context;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 66
    const/4 v7, 0x0

    .line 68
    .local v7, "state":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.oem.smartwifisupport.provider/wfc_state"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 69
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 70
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 71
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 74
    :cond_1
    return v7
.end method
