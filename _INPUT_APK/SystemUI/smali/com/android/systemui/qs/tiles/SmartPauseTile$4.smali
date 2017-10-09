.class Lcom/android/systemui/qs/tiles/SmartPauseTile$4;
.super Ljava/lang/Object;
.source "SmartPauseTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/SmartPauseTile;->showConfirmPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/SmartPauseTile;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile$4;->this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 222
    const-string v0, "SmartPauseTile"

    const-string v1, "showConfirmPopup() - P"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile$4;->this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$SmartScreenSettingsActivity"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/tiles/SmartPauseTile;->access$600(Lcom/android/systemui/qs/tiles/SmartPauseTile;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method
