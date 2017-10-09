.class Lcom/android/settings/GridSettings$6;
.super Ljava/lang/Object;
.source "GridSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/GridSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GridSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/GridSettings;)V
    .locals 0

    .prologue
    .line 821
    iput-object p1, p0, Lcom/android/settings/GridSettings$6;->this$0:Lcom/android/settings/GridSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/settings/GridSettings$6;->this$0:Lcom/android/settings/GridSettings;

    iget-object v1, p0, Lcom/android/settings/GridSettings$6;->this$0:Lcom/android/settings/GridSettings;

    invoke-static {v1}, Lcom/android/settings/GridSettings;->access$900(Lcom/android/settings/GridSettings;)Landroid/preference/PreferenceActivity$Header;

    move-result-object v1

    iget-object v1, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/GridSettings;->access$1000(Lcom/android/settings/GridSettings;Ljava/lang/String;)V

    .line 825
    return-void
.end method
