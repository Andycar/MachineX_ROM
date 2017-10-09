.class Lcom/android/systemui/qs/tiles/FloatingMessageTile$3;
.super Ljava/lang/Object;
.source "FloatingMessageTile.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/FloatingMessageTile;->showGuideDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/FloatingMessageTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/FloatingMessageTile;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/FloatingMessageTile$3;->this$0:Lcom/android/systemui/qs/tiles/FloatingMessageTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 245
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 246
    return-void
.end method
