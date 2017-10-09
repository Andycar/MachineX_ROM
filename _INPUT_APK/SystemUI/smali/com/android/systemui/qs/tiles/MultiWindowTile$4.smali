.class Lcom/android/systemui/qs/tiles/MultiWindowTile$4;
.super Ljava/lang/Object;
.source "MultiWindowTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/MultiWindowTile;->showConfirmPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/MultiWindowTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/MultiWindowTile;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MultiWindowTile$4;->this$0:Lcom/android/systemui/qs/tiles/MultiWindowTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 248
    return-void
.end method
