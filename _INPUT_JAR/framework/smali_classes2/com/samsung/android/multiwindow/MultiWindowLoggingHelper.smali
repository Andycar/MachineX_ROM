.class public Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;
.super Ljava/lang/Object;
.source "MultiWindowLoggingHelper.java"


# static fields
.field private static final APP_ID:Ljava/lang/String; = "com.samsung.android.multiwindow"

.field public static final CHANGE_POPUPWINDOW_TYPE:Ljava/lang/String; = "CHANGE-POPUP"

.field public static final CHANGE_SPLITWINDOW_TYPE:Ljava/lang/String; = "CHANGE-SPLIT"

.field public static final CLOSE_TYPE:Ljava/lang/String; = "CLOSE"

.field public static final DEBUG:Z = false

.field public static final DRAGCONTENT_TYPE:Ljava/lang/String; = "DRAGCONTENT"

.field public static final GESTURE_LOGGING_FEATURE:Ljava/lang/String; = "GEST"

.field public static final MAX_TYPE:Ljava/lang/String; = "MAXIMIZE"

.field public static final MIN_TYPE:Ljava/lang/String; = "MINIMIZE"

.field public static final POPUPWINDOW_LOGGING_FEATURE:Ljava/lang/String; = "POPW"

.field public static final RECENT_POPUP_LOGGING_FEATURE:Ljava/lang/String; = "RCPO"

.field public static final RECENT_SPLIT_LOGGING_FEATURE:Ljava/lang/String; = "RCSP"

.field public static final RECENT_STACKVIEW_LOGGING_FEATURE:Ljava/lang/String; = "RCSV"

.field public static final RECENT_VIEWPAGER_LOGGING_FEATURE:Ljava/lang/String; = "RCVP"

.field public static final RECNT_LONGPRESS_LOGGING_FEATURE:Ljava/lang/String; = "RCLP"

.field public static final SPLITWINDOW_LOGGING_FEATURE:Ljava/lang/String; = "SPLW"

.field public static final SWITCH_TYPE:Ljava/lang/String; = "SWITCH"

.field public static final TAG:Ljava/lang/String; = "MultiWindowLoggingHelper"

.field public static final TRAY_POPUP_LOGGING_FEATURE:Ljava/lang/String; = "TRPO"

.field public static final TRAY_SPLIT_LOGGING_FEATURE:Ljava/lang/String; = "TRSP"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 35
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 36
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.samsung.android.multiwindow"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    if-eqz p2, :cond_18

    .line 39
    const-string v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_18
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 42
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 43
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 49
    return-void
.end method
