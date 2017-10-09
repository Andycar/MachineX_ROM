.class Lcom/android/systemui/cooldown/Overheat$2;
.super Ljava/lang/Object;
.source "Overheat.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/cooldown/Overheat;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/cooldown/Overheat;


# direct methods
.method constructor <init>(Lcom/android/systemui/cooldown/Overheat;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/systemui/cooldown/Overheat$2;->this$0:Lcom/android/systemui/cooldown/Overheat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 109
    const-string v0, "OverheatReceiver"

    const-string v1, "click OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/android/systemui/cooldown/Overheat$2;->this$0:Lcom/android/systemui/cooldown/Overheat;

    invoke-virtual {v0}, Lcom/android/systemui/cooldown/Overheat;->finish()V

    .line 111
    return-void
.end method
