.class Lcom/android/settings/FontMenu$3;
.super Ljava/lang/Object;
.source "FontMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 355
    iput-object p1, p0, Lcom/android/settings/FontMenu$3;->this$0:Lcom/android/settings/FontMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/settings/FontMenu$3;->this$0:Lcom/android/settings/FontMenu;

    invoke-static {v0}, Lcom/android/settings/FontMenu;->access$100(Lcom/android/settings/FontMenu;)Landroid/preference/CheckBoxPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 364
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 366
    return-void
.end method
