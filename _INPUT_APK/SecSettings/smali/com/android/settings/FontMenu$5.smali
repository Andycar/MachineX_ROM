.class Lcom/android/settings/FontMenu$5;
.super Ljava/lang/Object;
.source "FontMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/FontMenu;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FontMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/FontMenu;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/settings/FontMenu$5;->this$0:Lcom/android/settings/FontMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/settings/FontMenu$5;->this$0:Lcom/android/settings/FontMenu;

    invoke-static {v0}, Lcom/android/settings/FontMenu;->access$000(Lcom/android/settings/FontMenu;)Lcom/android/settings/FontSizeListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/FontSizeListPreference;->click()V

    .line 375
    return-void
.end method
