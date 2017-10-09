.class Lcom/android/systemui/qs/tiles/SmartPauseTile$3;
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
    .line 240
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SmartPauseTile$3;->this$0:Lcom/android/systemui/qs/tiles/SmartPauseTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 243
    const-string v0, "SmartPauseTile"

    const-string v1, "showConfirmPopup() - N"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void
.end method
