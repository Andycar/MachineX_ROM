.class Lcom/android/settings/OneHandEditMenu$1;
.super Ljava/lang/Object;
.source "OneHandEditMenu.java"

# interfaces
.implements Lcom/android/settings/OneHandEditMenuLayout$OnNumOfAvailableButtonsChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/OneHandEditMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/OneHandEditMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/OneHandEditMenu;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/settings/OneHandEditMenu$1;->this$0:Lcom/android/settings/OneHandEditMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumOfAvailableButtonsChanged(I)V
    .locals 2
    .param p1, "num_of_available_buttons"    # I

    .prologue
    .line 116
    const-string v0, "OneHandEditMenu"

    const-string v1, "onNumOfAvailableButtonsChanged()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/settings/OneHandEditMenu$1;->this$0:Lcom/android/settings/OneHandEditMenu;

    invoke-static {v0}, Lcom/android/settings/OneHandEditMenu;->access$000(Lcom/android/settings/OneHandEditMenu;)V

    .line 118
    return-void
.end method
