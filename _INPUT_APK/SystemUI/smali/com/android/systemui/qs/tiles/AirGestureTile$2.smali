.class Lcom/android/systemui/qs/tiles/AirGestureTile$2;
.super Ljava/lang/Object;
.source "AirGestureTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/AirGestureTile;->showConfirmPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/AirGestureTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/AirGestureTile;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/AirGestureTile$2;->this$0:Lcom/android/systemui/qs/tiles/AirGestureTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 203
    const-string v0, "AirGestureTile"

    const-string v1, "showConfirmPopup() - Negative onClick mode: cancel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method
