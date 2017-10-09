.class Lcom/android/systemui/qs/tiles/DrivingModeTile$7;
.super Ljava/lang/Object;
.source "DrivingModeTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/DrivingModeTile;->showConfirmPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DrivingModeTile;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DrivingModeTile$7;->this$0:Lcom/android/systemui/qs/tiles/DrivingModeTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 377
    const-string v0, "DrivingModeTile"

    const-string v1, "showConfirmPopup() - Negative onClick mode: cancel"

    invoke-static {v0, v1}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-void
.end method
